package com.wonders.common.aspect;

import com.wonders.common.annotation.Log;
import com.wonders.common.context.TokenHandler;
import com.wonders.common.dto.LogDTO;
import com.wonders.common.rpc.LogRpcService;
import com.wonders.common.utils.IPUtils;
import com.wonders.common.utils.JSONUtils;
import com.wonders.common.utils.Resp;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;

/**
 * @author youlian.fei
 */
@Aspect
@Component
public class LogAspect {

    @Autowired
    LogRpcService logService;

    @Autowired
    HttpServletRequest request;


    @Pointcut("@annotation(com.wonders.common.annotation.Log)")
    public void logPointCut() {
    }

    @Around("logPointCut()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        long beginTime = System.currentTimeMillis();
        // 执行方法
        Resp result = (Resp)point.proceed();
        // 执行时长(毫秒)
        long time = System.currentTimeMillis() - beginTime;
        //异步保存日志
        saveLog(point, time);
        return result;
    }

   private void saveLog(ProceedingJoinPoint joinPoint, long time) {
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        LogDTO logDTO = new LogDTO();
        Log syslog = method.getAnnotation(Log.class);
        if (syslog != null) {
            // 注解上的描述
            logDTO.setOperation(syslog.value());
        }
        // 请求的方法名
        String className = joinPoint.getTarget().getClass().getName();
        String methodName = signature.getName();
        logDTO.setMethod(className + "." + methodName + "()");
        // 请求的参数
        Object[] args = joinPoint.getArgs();
        try {
            String params = JSONUtils.toJson(args[0]);
            logDTO.setParams(params);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 设置IP地址
        logDTO.setIp(IPUtils.getIpAddr(request));
        // 用户名
        logDTO.setUserId(Long.parseLong(TokenHandler.getUserID() == null ? "0" : TokenHandler.getUserID()));
        logDTO.setUsername(TokenHandler.getUsername() == null ? "" : TokenHandler.getUsername());
        logDTO.setTime((int) time);
        // 系统当前时间
        Date date = new Date();
        logDTO.setGmtCreate(date);
        // 保存系统日志
        logService.save(logDTO);
    }
}

