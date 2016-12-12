--------------------------------------------------------
--  File created - 星期一-十二月-12-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ__ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ__TB_COMMENT1_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__TB_COMMENT1_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ__TB_COMMENT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__TB_COMMENT_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ__TB_FEED1_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__TB_FEED1_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 55 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ__TB_FEED_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__TB_FEED_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ__TB_LOGINTICKET_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__TB_LOGINTICKET_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ__TB_MESSAGE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__TB_MESSAGE_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ__TB_QUESTION_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__TB_QUESTION_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ__TB_USER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ__TB_USER_ID"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TB_COMMENT
--------------------------------------------------------

  CREATE TABLE "TB_COMMENT" 
   (	"ID" NUMBER(11,0), 
	"CONTENT" CLOB, 
	"USER_ID" NUMBER(11,0), 
	"ENTITY_ID" NUMBER(11,0), 
	"ENTITY_TYPE" NUMBER(11,0), 
	"CREATED_DATE" DATE, 
	"STATUS" NUMBER(11,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table TB_FEED
--------------------------------------------------------

  CREATE TABLE "TB_FEED" 
   (	"ID" NUMBER(11,0), 
	"CREATED_DATE" DATE DEFAULT NULL, 
	"USER_ID" NUMBER(11,0) DEFAULT NULL, 
	"DATA" VARCHAR2(255 CHAR), 
	"TYPE" NUMBER(11,0) DEFAULT NULL
   ) ;
--------------------------------------------------------
--  DDL for Table TB_LOGIN_TICKET
--------------------------------------------------------

  CREATE TABLE "TB_LOGIN_TICKET" 
   (	"ID" NUMBER(11,0), 
	"USER_ID" NUMBER(11,0), 
	"TICKET" VARCHAR2(45 CHAR), 
	"EXPIRED" DATE, 
	"STATUS" NUMBER(11,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table TB_MESSAGE
--------------------------------------------------------

  CREATE TABLE "TB_MESSAGE" 
   (	"ID" NUMBER(11,0), 
	"FROM_ID" NUMBER(11,0) DEFAULT NULL, 
	"TO_ID" NUMBER(11,0) DEFAULT NULL, 
	"CONTENT" CLOB, 
	"CREATED_DATE" DATE DEFAULT NULL, 
	"HAS_READ" NUMBER(11,0) DEFAULT NULL, 
	"CONVERSATION_ID" VARCHAR2(45 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table TB_QUESTION
--------------------------------------------------------

  CREATE TABLE "TB_QUESTION" 
   (	"ID" NUMBER(11,0), 
	"TITLE" VARCHAR2(255 CHAR), 
	"CONTENT" CLOB, 
	"USER_ID" NUMBER(11,0), 
	"CREATED_DATE" DATE, 
	"COMMENT_COUNT" NUMBER(11,0) DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table TB_USER
--------------------------------------------------------

  CREATE TABLE "TB_USER" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(64 CHAR) DEFAULT null, 
	"PASSWORD" VARCHAR2(128 CHAR), 
	"SALT" VARCHAR2(32 CHAR) DEFAULT null, 
	"HEAD_URL" VARCHAR2(256 CHAR) DEFAULT null
   ) ;

---------------------------------------------------
--   DATA FOR TABLE TB_LOGIN_TICKET
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TB_LOGIN_TICKET
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (25,45,'d6d4f9b343b342679bf9b16c42706f9c',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (26,46,'9a8ea256a3a942abadebf30d2ba05925',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (27,47,'f74512644c9647419e68acde143c3f12',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (28,48,'9a1d6e33593f4403b142ab6ff17400e1',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (29,49,'f6e3248c4154401bbde392b63add031b',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (41,41,'d1840589771c47e4ab9317c1b2ebf1ec',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (42,42,'72b6bbe3a80f434e8dac41bb14b8574c',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (43,49,'6f0c2385f9484f5286fddc4e9275c6e2',to_date('12-12月-16','DD-MON-RR'),0);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (61,41,'7b62379e3ee94f02ac217dcb347fc595',to_date('13-12月-16','DD-MON-RR'),0);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (62,61,'e08942615c7b4c438ecb92eea9176d68',to_date('13-12月-16','DD-MON-RR'),0);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (21,41,'ecd6a9ac68e048bfb5a2456a59cbadaf',to_date('12-12月-16','DD-MON-RR'),0);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (22,42,'8f89c10162c5498bb761cec27233fc48',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (23,43,'f79a1af2da364282969c0f67b3110b6d',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (24,44,'b22e34b6f27648dea9f87aa2265c3c28',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (30,50,'909689ee728e4f62b558cc49a9d4060a',to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_LOGIN_TICKET (ID,USER_ID,TICKET,EXPIRED,STATUS) values (31,51,'a16a84dcfc824403a8fa7964c0bab838',to_date('12-12月-16','DD-MON-RR'),1);

---------------------------------------------------
--   END DATA FOR TABLE TB_LOGIN_TICKET
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE TB_COMMENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TB_COMMENT
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (27,(CLOB),45,24,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (30,(CLOB),45,21,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (32,(CLOB),41,22,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (33,(CLOB),46,25,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (34,(CLOB),46,24,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (36,(CLOB),48,26,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (37,(CLOB),49,27,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (39,(CLOB),41,29,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (41,(CLOB),41,27,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (42,(CLOB),41,25,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (61,(CLOB),42,29,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (81,(CLOB),41,42,1,to_date('12-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (21,(CLOB),42,21,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (22,(CLOB),43,22,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (23,(CLOB),43,21,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (24,(CLOB),44,23,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (25,(CLOB),44,21,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (26,(CLOB),44,22,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (28,(CLOB),45,23,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (29,(CLOB),45,22,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (31,(CLOB),41,23,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (35,(CLOB),46,21,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (38,(CLOB),41,30,1,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_COMMENT (ID,CONTENT,USER_ID,ENTITY_ID,ENTITY_TYPE,CREATED_DATE,STATUS) values (40,(CLOB),41,28,1,to_date('11-12月-16','DD-MON-RR'),0);

---------------------------------------------------
--   END DATA FOR TABLE TB_COMMENT
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE TB_QUESTION
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TB_QUESTION
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (26,'没有项目经验的前端应届生，你会怎么面试，怎样才会录用他？',(CLOB),46,to_date('11-12月-16','DD-MON-RR'),1);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (27,'程序员新人怎样在复杂代码中找 bug？',(CLOB),47,to_date('11-12月-16','DD-MON-RR'),2);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (28,'如何确定自己是否适合做程序员？',(CLOB),48,to_date('11-12月-16','DD-MON-RR'),1);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (29,'Python 的练手项目有哪些值得推荐？',(CLOB),49,to_date('11-12月-16','DD-MON-RR'),2);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (35,'如何证明我们生存在模拟的宇宙?',(CLOB),41,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (41,'敏感词不予显示问题',(CLOB),41,to_date('12-12月-16','DD-MON-RR'),0);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (42,'敏感词不予显示哈哈哈',(CLOB),61,to_date('12-12月-16','DD-MON-RR'),1);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (61,'嘻嘻嘻',(CLOB),61,to_date('12-12月-16','DD-MON-RR'),0);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (21,'如何在 Github 上做一个规范的开源项目？',(CLOB),41,to_date('11-12月-16','DD-MON-RR'),5);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (22,'面试前你都做了什么准备？',(CLOB),42,to_date('11-12月-16','DD-MON-RR'),4);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (23,'什么才算是真正的编程能力？',(CLOB),43,to_date('11-12月-16','DD-MON-RR'),3);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (24,'多线程编程的时候，使用无锁结构会不会比有锁结构更加快？',(CLOB),44,to_date('11-12月-16','DD-MON-RR'),2);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (25,'普通程序员如何向人工智能靠拢？',(CLOB),45,to_date('11-12月-16','DD-MON-RR'),2);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (30,'大学应怎样过才不留遗憾？',(CLOB),50,to_date('11-12月-16','DD-MON-RR'),1);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (31,'在一所风景特别美的学校读书是一种什么体验？',(CLOB),50,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (32,'你知道哪些让人捧腹的大学生活趣事？',null,50,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (33,'你的大四生活是怎样的?',(CLOB),51,to_date('11-12月-16','DD-MON-RR'),0);
Insert into TB_QUESTION (ID,TITLE,CONTENT,USER_ID,CREATED_DATE,COMMENT_COUNT) values (34,'如何在大学赚到一万元？',(CLOB),51,to_date('11-12月-16','DD-MON-RR'),0);

---------------------------------------------------
--   END DATA FOR TABLE TB_QUESTION
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE TB_FEED
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TB_FEED
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (156,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"已是寒冬","userId":"42"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (157,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"已是寒冬","userId":"42"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (158,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"26","questionTitle":"没有项目经验的前端应届生，你会怎么面试，怎样才会录用他？","userName":"已是寒冬","userId":"42"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (159,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"25","questionTitle":"普通程序员如何向人工智能靠拢？","userName":"已是寒冬","userId":"42"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (160,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"已是寒冬","userId":"42"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (161,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"已是寒冬","userId":"42"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (162,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"已是寒冬","userId":"42"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (163,to_date('12-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"35","questionTitle":"如何证明我们生存在模拟的宇宙?","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (164,to_date('12-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"29","questionTitle":"Python 的练手项目有哪些值得推荐？","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (165,to_date('12-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (166,to_date('12-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (167,to_date('12-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"26","questionTitle":"没有项目经验的前端应届生，你会怎么面试，怎样才会录用他？","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (168,to_date('12-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"25","questionTitle":"普通程序员如何向人工智能靠拢？","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (169,to_date('12-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (170,to_date('12-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"42","questionTitle":"敏感词不予显示哈哈哈","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (171,to_date('12-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"42","questionTitle":"敏感词不予显示哈哈哈","userName":"周梁","userId":"41"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (22,to_date('10-12月-16','DD-MON-RR'),9,'{"userHead":"http://images.nowcoder.com/head/764t.png","questionId":"11","questionTitle":"TITLE{10}","userName":"USER3","userId":"4"}',2);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (30,to_date('10-12月-16','DD-MON-RR'),8,'{"userHead":"http://images.nowcoder.com/head/764t.png","questionId":"11","questionTitle":"TITLE{10}","userName":"USER3","userId":"4"}',2);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (68,to_date('11-12月-16','DD-MON-RR'),44,'{"userHead":"http://images.nowcoder.com/head/522t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"vczh","userId":"44"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (69,to_date('11-12月-16','DD-MON-RR'),45,'{"userHead":"http://images.nowcoder.com/head/129t.png","questionId":"24","questionTitle":"多线程编程的时候，使用无锁结构会不会比有锁结构更加快？","userName":"小铭","userId":"45"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (73,to_date('11-12月-16','DD-MON-RR'),45,'{"userHead":"http://images.nowcoder.com/head/129t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"小铭","userId":"45"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (77,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"周梁","userId":"41"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (79,to_date('11-12月-16','DD-MON-RR'),46,'{"userHead":"http://images.nowcoder.com/head/699t.png","questionId":"25","questionTitle":"普通程序员如何向人工智能靠拢？","userName":"妮妮","userId":"46"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (80,to_date('11-12月-16','DD-MON-RR'),46,'{"userHead":"http://images.nowcoder.com/head/699t.png","questionId":"25","questionTitle":"普通程序员如何向人工智能靠拢？","userName":"妮妮","userId":"46"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (85,to_date('11-12月-16','DD-MON-RR'),47,'{"userHead":"http://images.nowcoder.com/head/933t.png","questionId":"26","questionTitle":"没有项目经验的前端应届生，你会怎么面试，怎样才会录用他？","userName":"琪琪","userId":"47"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (86,to_date('11-12月-16','DD-MON-RR'),47,'{"userHead":"http://images.nowcoder.com/head/933t.png","questionId":"24","questionTitle":"多线程编程的时候，使用无锁结构会不会比有锁结构更加快？","userName":"琪琪","userId":"47"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (87,to_date('11-12月-16','DD-MON-RR'),47,'{"userHead":"http://images.nowcoder.com/head/933t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"琪琪","userId":"47"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (88,to_date('11-12月-16','DD-MON-RR'),47,'{"userHead":"http://images.nowcoder.com/head/933t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"琪琪","userId":"47"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (89,to_date('11-12月-16','DD-MON-RR'),48,'{"userHead":"http://images.nowcoder.com/head/398t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"表姐","userId":"48"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (90,to_date('11-12月-16','DD-MON-RR'),48,'{"userHead":"http://images.nowcoder.com/head/398t.png","questionId":"26","questionTitle":"没有项目经验的前端应届生，你会怎么面试，怎样才会录用他？","userName":"表姐","userId":"48"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (91,to_date('11-12月-16','DD-MON-RR'),48,'{"userHead":"http://images.nowcoder.com/head/398t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"表姐","userId":"48"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (92,to_date('11-12月-16','DD-MON-RR'),48,'{"userHead":"http://images.nowcoder.com/head/398t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"表姐","userId":"48"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (93,to_date('11-12月-16','DD-MON-RR'),48,'{"userHead":"http://images.nowcoder.com/head/398t.png","questionId":"26","questionTitle":"没有项目经验的前端应届生，你会怎么面试，怎样才会录用他？","userName":"表姐","userId":"48"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (94,to_date('11-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (95,to_date('11-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"BOSS","userId":"49"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (107,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"30","questionTitle":"大学应怎样过才不留遗憾？","userName":"周梁","userId":"41"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (109,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"周梁","userId":"41"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (110,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (111,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (113,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"25","questionTitle":"普通程序员如何向人工智能靠拢？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (115,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (116,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"29","questionTitle":"Python 的练手项目有哪些值得推荐？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (121,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"35","questionTitle":"如何证明我们生存在模拟的宇宙?","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (122,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (123,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (124,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (141,to_date('12-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (142,to_date('12-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"24","questionTitle":"多线程编程的时候，使用无锁结构会不会比有锁结构更加快？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (143,to_date('12-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"25","questionTitle":"普通程序员如何向人工智能靠拢？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (144,to_date('12-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (145,to_date('12-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (146,to_date('12-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (147,to_date('12-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (148,to_date('12-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"29","questionTitle":"Python 的练手项目有哪些值得推荐？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (149,to_date('12-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (150,to_date('12-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (151,to_date('12-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (1,to_date('10-12月-16','DD-MON-RR'),8,'{"userHead":"http://images.nowcoder.com/head/764t.png","questionId":"11","questionTitle":"TITLE{10}","userName":"USER3","userId":"4"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (31,to_date('10-12月-16','DD-MON-RR'),8,'{"userHead":"http://images.nowcoder.com/head/764t.png","questionId":"11","questionTitle":"TITLE{10}","userName":"USER3","userId":"4"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (35,to_date('10-12月-16','DD-MON-RR'),8,'{"userHead":"http://images.nowcoder.com/head/764t.png","questionId":"11","questionTitle":"TITLE{10}","userName":"USER3","userId":"4"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (41,to_date('10-12月-16','DD-MON-RR'),9,'{"userHead":"http://images.nowcoder.com/head/120t.png","questionId":"8","questionTitle":"TITLE{7}","userName":"USER7","userId":"8"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (61,to_date('11-12月-16','DD-MON-RR'),43,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"孜然","userId":"43"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (62,to_date('11-12月-16','DD-MON-RR'),43,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"孜然","userId":"43"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (63,to_date('11-12月-16','DD-MON-RR'),44,'{"userHead":"http://images.nowcoder.com/head/522t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"vczh","userId":"44"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (64,to_date('11-12月-16','DD-MON-RR'),44,'{"userHead":"http://images.nowcoder.com/head/522t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"vczh","userId":"44"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (65,to_date('11-12月-16','DD-MON-RR'),44,'{"userHead":"http://images.nowcoder.com/head/522t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"vczh","userId":"44"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (66,to_date('11-12月-16','DD-MON-RR'),44,'{"userHead":"http://images.nowcoder.com/head/522t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"vczh","userId":"44"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (67,to_date('11-12月-16','DD-MON-RR'),44,'{"userHead":"http://images.nowcoder.com/head/522t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"vczh","userId":"44"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (70,to_date('11-12月-16','DD-MON-RR'),45,'{"userHead":"http://images.nowcoder.com/head/129t.png","questionId":"24","questionTitle":"多线程编程的时候，使用无锁结构会不会比有锁结构更加快？","userName":"小铭","userId":"45"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (71,to_date('11-12月-16','DD-MON-RR'),45,'{"userHead":"http://images.nowcoder.com/head/129t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"小铭","userId":"45"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (72,to_date('11-12月-16','DD-MON-RR'),45,'{"userHead":"http://images.nowcoder.com/head/129t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"小铭","userId":"45"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (74,to_date('11-12月-16','DD-MON-RR'),45,'{"userHead":"http://images.nowcoder.com/head/129t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"小铭","userId":"45"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (75,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (76,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (78,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"22","questionTitle":"面试前你都做了什么准备？","userName":"周梁","userId":"41"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (81,to_date('11-12月-16','DD-MON-RR'),46,'{"userHead":"http://images.nowcoder.com/head/699t.png","questionId":"24","questionTitle":"多线程编程的时候，使用无锁结构会不会比有锁结构更加快？","userName":"妮妮","userId":"46"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (82,to_date('11-12月-16','DD-MON-RR'),46,'{"userHead":"http://images.nowcoder.com/head/699t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"妮妮","userId":"46"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (83,to_date('11-12月-16','DD-MON-RR'),46,'{"userHead":"http://images.nowcoder.com/head/699t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"妮妮","userId":"46"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (84,to_date('11-12月-16','DD-MON-RR'),46,'{"userHead":"http://images.nowcoder.com/head/699t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"妮妮","userId":"46"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (96,to_date('11-12月-16','DD-MON-RR'),49,'{"userHead":"http://images.nowcoder.com/head/327t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"BOSS","userId":"49"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (97,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"30","questionTitle":"大学应怎样过才不留遗憾？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (98,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"29","questionTitle":"Python 的练手项目有哪些值得推荐？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (99,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"28","questionTitle":"如何确定自己是否适合做程序员？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (100,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (101,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (102,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"26","questionTitle":"没有项目经验的前端应届生，你会怎么面试，怎样才会录用他？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (103,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"25","questionTitle":"普通程序员如何向人工智能靠拢？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (104,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"24","questionTitle":"多线程编程的时候，使用无锁结构会不会比有锁结构更加快？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (105,to_date('11-12月-16','DD-MON-RR'),51,'{"userHead":"http://images.nowcoder.com/head/295t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"屌丝灿","userId":"51"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (106,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"30","questionTitle":"大学应怎样过才不留遗憾？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (108,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"29","questionTitle":"Python 的练手项目有哪些值得推荐？","userName":"周梁","userId":"41"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (112,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"27","questionTitle":"程序员新人怎样在复杂代码中找 bug？","userName":"周梁","userId":"41"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (114,to_date('11-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"25","questionTitle":"普通程序员如何向人工智能靠拢？","userName":"周梁","userId":"41"}',1);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (152,to_date('12-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"23","questionTitle":"什么才算是真正的编程能力？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (153,to_date('12-12月-16','DD-MON-RR'),41,'{"userHead":"http://images.nowcoder.com/head/845t.png","questionId":"21","questionTitle":"如何在 Github 上做一个规范的开源项目？","userName":"周梁","userId":"41"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (154,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"35","questionTitle":"如何证明我们生存在模拟的宇宙?","userName":"已是寒冬","userId":"42"}',4);
Insert into TB_FEED (ID,CREATED_DATE,USER_ID,DATA,TYPE) values (155,to_date('12-12月-16','DD-MON-RR'),42,'{"userHead":"http://images.nowcoder.com/head/45t.png","questionId":"29","questionTitle":"Python 的练手项目有哪些值得推荐？","userName":"已是寒冬","userId":"42"}',1);

---------------------------------------------------
--   END DATA FOR TABLE TB_FEED
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE TB_MESSAGE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TB_MESSAGE
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (213,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (214,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (215,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (216,13,42,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_42');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (217,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (218,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (219,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (220,13,49,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_49');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (221,13,42,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_42');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (222,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (223,13,48,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_48');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (224,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (225,13,47,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_47');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (226,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (227,13,49,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_49');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (228,13,46,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_46');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (229,13,48,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_48');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (230,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (231,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (232,13,46,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_46');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (233,13,46,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_46');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (234,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (235,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (236,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (237,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (238,13,61,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_61');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (239,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (240,41,61,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'41_61');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (126,51,41,(CLOB),to_date('11-12月-16','DD-MON-RR'),0,'41_51');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (141,51,41,(CLOB),to_date('11-12月-16','DD-MON-RR'),0,'41_51');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (151,49,41,(CLOB),to_date('11-12月-16','DD-MON-RR'),0,'41_49');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (163,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (164,13,43,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_43');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (165,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (166,13,46,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_46');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (167,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (168,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (169,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (170,13,46,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_46');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (171,13,47,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_47');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (172,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (173,13,49,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_49');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (174,13,48,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_48');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (175,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (176,13,42,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_42');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (177,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (178,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (179,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (180,13,46,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_46');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (181,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (182,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (150,49,42,(CLOB),to_date('11-12月-16','DD-MON-RR'),0,'42_49');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (161,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (162,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (183,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (184,13,49,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_49');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (185,13,48,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_48');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (186,13,47,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_47');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (188,13,49,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_49');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (189,13,43,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_43');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (190,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (191,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (192,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (193,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (194,13,43,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_43');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (195,13,42,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_42');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (196,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (197,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (198,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (199,13,48,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_48');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (200,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (201,13,47,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_47');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (202,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (203,13,49,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_49');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (204,13,46,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_46');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (205,13,48,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_48');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (206,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (207,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (208,13,46,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_46');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (209,13,43,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_43');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (210,13,41,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_41');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (211,13,45,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_45');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (212,13,44,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_44');
Insert into TB_MESSAGE (ID,FROM_ID,TO_ID,CONTENT,CREATED_DATE,HAS_READ,CONVERSATION_ID) values (187,13,47,(CLOB),to_date('12-12月-16','DD-MON-RR'),0,'13_47');

---------------------------------------------------
--   END DATA FOR TABLE TB_MESSAGE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE TB_USER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into TB_USER
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (45,'小铭','973CCB2BC48EC8BB79B2BA21E9E2B1E7','53c33','http://images.nowcoder.com/head/129t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (46,'妮妮','10C61A3DD1FD9F68A895432D2685AB5D','c50a8','http://images.nowcoder.com/head/699t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (47,'琪琪','46E6089F871CD8C6D2A8392CE5C2EA53','6acc7','http://images.nowcoder.com/head/933t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (48,'表姐','5227744BAE3C0757FCCBB97B7E79307C','48cd7','http://images.nowcoder.com/head/398t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (49,'BOSS','F261A8C374E8FE94AA184FF37712520C','d1e5f','http://images.nowcoder.com/head/327t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (61,'罗老师','5405A4249F9159F2F93908F1AF44D0FF','aebd4','http://images.nowcoder.com/head/999t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (42,'已是寒冬','D80200F4C2202984EF7D7F83968B1B28','3683b','http://images.nowcoder.com/head/45t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (41,'周梁','1A91B36E6055F78BCE8A5B64E7AB7CA6','46faa','http://images.nowcoder.com/head/845t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (43,'孜然','0915ECF899865E60E13F7ACD3A866002','eda3d','http://images.nowcoder.com/head/45t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (44,'vczh','7BC9B1E3CC8D1B4311BA21D4BC608F8B','98169','http://images.nowcoder.com/head/522t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (50,'admin','371F4A8939422FEC5C8E0D6C58D36B04','241f5','http://images.nowcoder.com/head/225t.png');
Insert into TB_USER (ID,NAME,PASSWORD,SALT,HEAD_URL) values (51,'屌丝灿','212650919C354380D7F9194D673D5C6E','ad3d2','http://images.nowcoder.com/head/295t.png');

---------------------------------------------------
--   END DATA FOR TABLE TB_USER
---------------------------------------------------
--------------------------------------------------------
--  Constraints for Table TB_QUESTION
--------------------------------------------------------

  ALTER TABLE "TB_QUESTION" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_QUESTION" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "TB_QUESTION" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_QUESTION" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "TB_QUESTION" MODIFY ("COMMENT_COUNT" NOT NULL ENABLE);
 
  ALTER TABLE "TB_QUESTION" ADD CONSTRAINT "TB_QUESTION_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table TB_COMMENT
--------------------------------------------------------

  ALTER TABLE "TB_COMMENT" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_COMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "TB_COMMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_COMMENT" MODIFY ("ENTITY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_COMMENT" MODIFY ("ENTITY_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "TB_COMMENT" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "TB_COMMENT" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "TB_COMMENT" ADD CONSTRAINT "TB_COMMENT_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table TB_LOGIN_TICKET
--------------------------------------------------------

  ALTER TABLE "TB_LOGIN_TICKET" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_LOGIN_TICKET" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_LOGIN_TICKET" MODIFY ("TICKET" NOT NULL ENABLE);
 
  ALTER TABLE "TB_LOGIN_TICKET" MODIFY ("EXPIRED" NOT NULL ENABLE);
 
  ALTER TABLE "TB_LOGIN_TICKET" ADD CONSTRAINT "TB_LOGIN_TICKET_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table TB_FEED
--------------------------------------------------------

  ALTER TABLE "TB_FEED" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_FEED" ADD CONSTRAINT "TB_FEED_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table TB_USER
--------------------------------------------------------

  ALTER TABLE "TB_USER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_USER" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "TB_USER" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "TB_USER" MODIFY ("SALT" NOT NULL ENABLE);
 
  ALTER TABLE "TB_USER" MODIFY ("HEAD_URL" NOT NULL ENABLE);
 
  ALTER TABLE "TB_USER" ADD CONSTRAINT "TB_USER_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table TB_MESSAGE
--------------------------------------------------------

  ALTER TABLE "TB_MESSAGE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_MESSAGE" MODIFY ("CONVERSATION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TB_MESSAGE" ADD CONSTRAINT "TB_MESSAGE_PK" PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  DDL for Index TB_QUESTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TB_QUESTION_PK" ON "TB_QUESTION" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index TB_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TB_USER_PK" ON "TB_USER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index TB_LOGIN_TICKET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TB_LOGIN_TICKET_PK" ON "TB_LOGIN_TICKET" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index TB_COMMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TB_COMMENT_PK" ON "TB_COMMENT" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index TB_MESSAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TB_MESSAGE_PK" ON "TB_MESSAGE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index TB_FEED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TB_FEED_PK" ON "TB_FEED" ("ID") 
  ;






