package com.zl.async.handler;


import com.zl.async.EventHandler;
import com.zl.async.EventModel;
import com.zl.async.EventType;
import com.zl.model.EntityType;
import com.zl.model.Message;
import com.zl.model.User;
import com.zl.service.MessageService;
import com.zl.service.UserService;
import com.zl.util.WendaUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * Created by nowcoder on 2016/7/30.
 */
@Component
public class FollowHandler implements EventHandler {
    private static final Logger logger = LoggerFactory.getLogger(FollowHandler.class);

    @Autowired
    MessageService messageService;

    @Autowired
    UserService userService;

    @Override
    public void doHandle(EventModel model) {
        Message message = new Message();
        message.setFromId(WendaUtil.SYSTEM_USERID);
        message.setToId(model.getEntityOwnerId());
        message.setCreatedDate(new Date());
        User user = userService.getUser(model.getActorId());

        logger.info("私信发送被关注事件： "+model.toString());

        if (model.getEntityType() == EntityType.ENTITY_QUESTION) {
            message.setContent("用户" + user.getName()
                    + "关注了你的问题,<a class=\"question_link\" target=\"_blank\" href=\"//127.0.0.1:8080/question/" + model.getEntityId()+"\">点击跳转到该问题</a>");
        } else if (model.getEntityType() == EntityType.ENTITY_USER) {
            message.setContent("用户" + user.getName()
                    + "关注了你,<a class=\"user_link\" target=\"_blank\" href=\"//127.0.0.1:8080/user/"+ model.getActorId()+"\">点击跳转到该用户主页</a>");
        }

        messageService.addMessage(message);
    }

    @Override
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.FOLLOW);
    }
}
