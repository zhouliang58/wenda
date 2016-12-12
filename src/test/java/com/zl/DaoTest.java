package com.zl;

import com.zl.dao.*;
import com.zl.model.Feed;
import com.zl.model.Message;
import com.zl.model.Question;
import com.zl.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by zhouliang on 2016-12-08.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = WendaApplication.class)
public class DaoTest {
    @Autowired
    UserDAO userDAO;

    @Autowired
    QuestionDAO questionDAO;

    @Autowired
    MessageDAO messageDAO;

    @Autowired
    LoginTicketDAO loginTicketDAO;

    @Autowired
    FeedDAO feedDAO;

    @Autowired
    CommentDAO commentDAO;

    @Test
    public void CommentDaoTest(){

        commentDAO.updateStatus(24,1,0);
/*        Comment comment = new Comment();
        comment.setContent("测试评论5");
        comment.setStatus(1);
        comment.setEntityType(1);
        comment.setUserId(8);
        comment.setEntityId(3);
        comment.setCreatedDate(new Date());
        int result = commentDAO.addComment(comment);
        System.out.println(result);*/

/*        Comment comment1 = commentDAO.getCommentById(4);
        System.out.println(comment1);*/

/*        commentDAO.updateStatus(2,1,0);*/

/*        List<Comment> result = commentDAO.selectByEntity(2, 1);
        System.out.println(result.size());*/

/*        int result = commentDAO.getCommentCount(2,1);
        System.out.println(result);*/

/*        int result = commentDAO.getUserCommentCount(9);
        System.out.println(result);*/


    }

    @Test
    public void FeddDaoTest(){
/*        Feed feed = new Feed();
        feed.setUserId(9);
        feed.setCreatedDate(new Date());
        feed.setData("{ces:2}");
        feed.setType(1);
        int result = feedDAO.addFeed(feed);
        System.out.println(result);*/

 /*       Feed feed1 = feedDAO.getFeedById(1);
        System.out.println(feed1.toString());*/

        List<Integer> userIds = new ArrayList<Integer>();
        userIds.add(8);
        userIds.add(9);
        List<Feed> result = feedDAO.selectUserFeeds(1000,userIds, 3);
        System.out.println("!!!!!"+result.size());
    }

    @Test
    public void LoginTicketTest(){
/*        LoginTicket loginTicket = new LoginTicket();
        loginTicket.setUserId(8);
        loginTicket.setExpired(new Date());
        loginTicket.setStatus(0);
        loginTicket.setTicket("测试token");
        int result = loginTicketDAO.addTicket(loginTicket);
        System.out.println(result);*/

/*        LoginTicket loginTicket = loginTicketDAO.selectByTicket("测试token");
        System.out.println(loginTicket.getUserId());*/

        loginTicketDAO.updateStatus("测试token",1);
    }
    @Test
    public void MessageGetNoRead(){
/*        int result = messageDAO.getConvesationUnreadCount(9,"8_9");
        System.out.println(result);*/
        List<Message> result = messageDAO.getConversationDetail("8_9",1,3);
        System.out.println(result.size());
    }
    @Test
    public void MessageListTest(){
        List<Message> result = messageDAO.getConversationList(8,1,3);
        for (Message mesaage: result ) {
            System.out.println(mesaage.getContent());
        }
    }

    @Test
    public void MessageDaoTest(){
        Message message = new Message();
        message.setCreatedDate(new Date());
        message.setContent("测试私信11");
        message.setFromId(8);
        message.setToId(22);
        message.setHasRead(0);
        int result = messageDAO.addMessage(message);
        System.out.println(result);
    }


    @Test
    public void QuestionDaoTest(){
/*        Question question = new Question();
        question.setContent("测试内容3");
        question.setCreatedDate(new Date());
        question.setTitle("测试问题3");
        question.setUserId(8);
        //question.setCommentCount(0);
        int result = questionDAO.addQuestion(question);
        System.out.println(result);*/
/*        questionDAO.updateCommentCount(2,10);*/

/*        Question question = questionDAO.getById(2);
        System.out.println(question.getCommentCount());*/
        List<Question> result =  questionDAO.selectLatestQuestions(8,0,3);
        for (Question question:
             result) {
            System.out.println(question.getTitle());
        }

    }

    @Test
    public void UserDaoTest(){
/*        User user = new User();
        //user.setId(3);
        user.setSalt("ces");
        user.setName("测试用户3");
        user.setPassword("123456");
        user.setHeadUrl("ces");
        int o = userDAO.addUser(user);
        System.out.println(o);*/


        User user = new User();
        user.setId(50);

        user.setName("test");
        user.setPassword("test");
        user.setHeadUrl("test");
        userDAO.updatePassword(user);

    }
}
