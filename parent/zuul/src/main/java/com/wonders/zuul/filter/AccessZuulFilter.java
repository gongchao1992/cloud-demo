package com.wonders.zuul.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.wonders.common.constants.Const;
import com.wonders.common.context.TokenHandler;
import com.wonders.common.utils.JSONUtils;
import com.wonders.common.utils.Resp;
import com.wonders.zuul.rpc.OAuthService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

import static org.springframework.cloud.netflix.zuul.filters.support.FilterConstants.PRE_TYPE;

/**
 * 自定义过滤器-校验请求参数是否合法：包含token参数
 * @author youlian.fei
 */
@Component
public class AccessZuulFilter extends ZuulFilter {


    @Override
    public String filterType() {
        return PRE_TYPE;
    }

    @Override
    public int filterOrder() {
        return 0;
    }

    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() {
        //获取请求的上下文类 注意是：com.netflix.zuul.context包下的
        RequestContext ctx = RequestContext.getCurrentContext();
        //获取request对象
        HttpServletRequest request = ctx.getRequest();

        final String requestUri = request.getRequestURI();
        //是否是忽略url
        if (isIgnorePath(requestUri)) {
            return null;
        }
        //消息头中获取
        String accessToken = request.getHeader(Const.CONTEXT_TOKEN);
        if (StringUtils.isBlank(accessToken)) {
            //参数中获取
            accessToken = request.getParameter(Const.TOKEN);
        }

        if (StringUtils.isBlank(accessToken)) {
            cutRequestHandler(Resp.error401(), 200);
            return null;
        }
        //将accessToken存入当前请求上下文中
        TokenHandler.setToken(accessToken);

        if (!havePermission(request)) {
            cutRequestHandler(Resp.error401(), 200);
            return null;
        }

        //移除忽略token
//        if (ctx.containsKey(IGNORED_HEADERS)) {
//            Collection headers = (Collection<?>) ctx.get(IGNORED_HEADERS);
//            headers.remove(Const.CONTEXT_TOKEN);
//        }
        return null;
    }



    @Autowired
    OAuthService oAuthService;

    //功能权限验证
    private boolean havePermission(HttpServletRequest request) {
        String currentURL = request.getRequestURI();
        Resp resp = oAuthService.validatePath(currentURL);
        if(null == resp.get("data")){
            return false;
        }
        return (Boolean)resp.get("data");
    }

    //中断请求
    private void cutRequestHandler(Object body, int code) {
        RequestContext ctx = RequestContext.getCurrentContext();
        ctx.setResponseStatusCode(code);
        HttpServletResponse response = ctx.getResponse();
        PrintWriter out;
        try {
            out = response.getWriter();
            out.write(Objects.requireNonNull(JSONUtils.toJson(body)));
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
        ctx.setSendZuulResponse(false);
    }


    //逗号分隔
    private String ignorePaths = "/base/login";

    private boolean isIgnorePath(String requestUri) {
        boolean flag = false;
        for (String s : ignorePaths.split(",")) {

            if (requestUri.startsWith(s)) {
                return true;
            }
        }
        return flag;
    }


}
