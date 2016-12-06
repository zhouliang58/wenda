package com.zl;

import com.zl.dao.CommentDAO;
import com.zl.dao.QuestionDAO;
import com.zl.dao.UserDAO;
import com.zl.model.Comment;
import com.zl.model.EntityType;
import com.zl.model.Question;
import com.zl.model.User;
import com.zl.service.LikeService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * Created by zhouliang on 2016/10/13.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = WendaApplication.class)
public class InitDatabaseTests {
    @Autowired
    UserDAO userDAO;

    @Autowired
    QuestionDAO questionDAO;

    @Autowired
    CommentDAO commentDAO;

    @Autowired
    LikeService likeService;

    @Test
    public  void questionTest(){
        List<Question> questionLIst = questionDAO.selectLatestQuestions(0,0,10);
        System.out.println(questionLIst.size());
    }
    @Test
    public void contextLoads() {
        Random random = new Random();
        for (int i = 0; i < 11; ++i) {
            User user = new User();
            user.setHeadUrl(String.format("http://images.nowcoder.com/head/%dt.png", random.nextInt(1000)));
            user.setName(String.format("USER%d", i));
            user.setPassword("");
            user.setSalt("");
            userDAO.addUser(user);

            user.setPassword("newpassword");
            userDAO.updatePassword(user);

            Question question = new Question();
            question.setCommentCount(i);
            Date date = new Date();
            date.setTime(date.getTime() + 1000 * 3600 * 5 * i);
            question.setCreatedDate(date);
            question.setUserId(i + 1);
            question.setTitle(String.format("TITLE{%d}", i));
            question.setContent(String.format("Balaababalalalal Content %d", i));
            questionDAO.addQuestion(question);
        }
        Assert.assertEquals("newpassword", userDAO.selectById(1).getPassword());
        userDAO.deleteById(1);
        Assert.assertNull(userDAO.selectById(1));

    }

    @Test
    public void addcomment(){
        for (int i= 0 ; i < 10 ;i++){
            Comment comment = new Comment();
            comment.setContent("我是第"+i+"条评论");
            comment.setCreatedDate(new Date());
            comment.setEntityType(i%2);
            comment.setUserId(i);
            comment.setStatus(1);
            commentDAO.addComment(comment);
        }
    }

    @Test
    public void kile(){
        long likeCount = likeService.like(13, EntityType.ENTITY_COMMENT, 23);
    }
}
