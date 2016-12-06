package com.zl.async.handler;

import com.alibaba.fastjson.JSONObject;
import com.zl.async.EventHandler;
import com.zl.async.EventModel;
import com.zl.async.EventType;
import com.zl.model.*;
import com.zl.service.FeedService;
import com.zl.service.FollowService;
import com.zl.service.QuestionService;
import com.zl.service.UserService;
import com.zl.util.JedisAdapter;
import com.zl.util.RedisKeyUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;

/**
 * 关注问题或者关注用户就会给粉丝推送新鲜事
 */
@Component
public class FeedHandler implements EventHandler {
    private static final Logger logger = LoggerFactory.getLogger(FeedHandler.class);

    @Autowired
    FollowService followService;

    @Autowired
    UserService userService;

    @Autowired
    FeedService feedService;

    @Autowired
    JedisAdapter jedisAdapter;

    @Autowired
    QuestionService questionService;

    @Autowired
    HostHolder hostHolder;


    private String buildFeedData(EventModel model) {

        Map<String, String> map = new HashMap<String ,String>();
        // 触发用户是通用的
        User actor = userService.getUser(model.getActorId());
        if (actor == null) {
            return null;
        }
        map.put("userId", String.valueOf(actor.getId()));
        map.put("userHead", actor.getHeadUrl());
        map.put("userName", actor.getName());

        if (model.getType() == EventType.COMMENT ||
                (model.getType() == EventType.FOLLOW  && model.getEntityType() == EntityType.ENTITY_QUESTION)) {
            Question question = questionService.getById(model.getEntityId());
            if (question == null) {
                return null;
            }
            map.put("questionId", String.valueOf(question.getId()));
            map.put("questionTitle", question.getTitle());
            return JSONObject.toJSONString(map);
        }
        return null;
    }

    @Override
    public void doHandle(EventModel model) {
        logger.info("开始消费一个新鲜事: "+model.toString());
        // 为了测试，把model的userId随机一下
/*        Random r = new Random();
        model.setActorId(1+r.nextInt(10));*/

        // 构造一个新鲜事
        Feed feed = new Feed();
        feed.setCreatedDate(new Date());
        feed.setType(model.getType().getValue());
        feed.setUserId(model.getActorId());
        feed.setData(buildFeedData(model));
        if (feed.getData() == null) {
            // 不支持的feed
            return;
        }

        boolean flag = feedService.addFeed(feed);
        logger.info("往数据库添加新鲜事： "+flag+" "+feed.toString());
        // 获得所有粉丝
        List<Integer> followers = followService.getFollowers(EntityType.ENTITY_USER, model.getActorId(), Integer.MAX_VALUE);
        // 系统队列
        //followers.add(0);
        // 给所有粉丝推事件
        for (int follower : followers) {
            String timelineKey = RedisKeyUtil.getTimelineKey(follower);
            jedisAdapter.lpush(timelineKey, String.valueOf(feed.getId()));
            logger.info("给粉丝推送新鲜事： "+timelineKey);

            // 限制最长长度，如果timelineKey的长度过大，就删除后面的新鲜事
        }
    }

    @Override
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(new EventType[]{EventType.COMMENT, EventType.FOLLOW});
    }
}
