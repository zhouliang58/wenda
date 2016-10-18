package com.zl.aspect;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * Created by zhouliang on 2016/10/13.
 */
@Aspect
@Component
public class LogAspect {
    private static final Logger logger = LoggerFactory.getLogger(LogAspect.class);

    @Before("execution(* com.zl.controller.*Controller.*(..))")
    public void beforeMethod(JoinPoint joinPoint) {
        if(joinPoint!=null) {
            logger.info(joinPoint.getSignature().getName() +  "开始执行");
        }
    }

    @After("execution(* com.zl.controller.*Controller.*(..))")
    public void afterMethod(JoinPoint joinPoint) {
        if(joinPoint!=null) {
            logger.info(joinPoint.getSignature().getName() + "执行完毕");
        }
    }
}
