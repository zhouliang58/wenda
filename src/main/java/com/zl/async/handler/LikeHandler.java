package com.zl.async.handler;


import com.zl.async.EventHandler;
import com.zl.async.EventModel;
import com.zl.async.EventType;
import com.zl.model.Message;
import com.zl.model.User;
import com.zl.service.MessageService;
import com.zl.service.UserService;
import com.zl.util.WendaUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * Created by nowcoder on 2016/7/30.
 */
@Component
public class LikeHandler implements EventHandler {
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
        message.setContent("用户" + user.getName()
                + "赞了你的评论,<a class=\"question_link\" target=\"_blank\" href=\"//127.0.0.1:8080/question/"
                + model.getExt("questionId")+"\">点击跳转到该问题</a>");
        messageService.addMessage(message);
    }

    @Override
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.LIKE);
    }
}
