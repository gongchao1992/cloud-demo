package com.wonders.common.intercepter;


import com.wonders.common.constants.Const;
import com.wonders.common.context.TokenHandler;
import com.wonders.common.dto.UserToken;
import com.wonders.common.utils.JwtUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 权限验证
 * @author youlian.fei
 */
public class AuthIntercepter extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //验证token
    	String token = request.getHeader(Const.CONTEXT_TOKEN);

        UserToken userToken = JwtUtils.getInfoFromToken(token);

        TokenHandler.setToken(token);
        TokenHandler.setUsername(userToken.getUsername());
        TokenHandler.setName(userToken.getName());
        TokenHandler.setUserID(userToken.getUserId());
        return super.preHandle(request, response, handler);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        TokenHandler.remove();
        super.afterCompletion(request, response, handler, ex);
    }
}
