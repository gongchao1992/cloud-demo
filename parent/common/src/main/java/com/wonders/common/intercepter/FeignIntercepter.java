package com.wonders.common.intercepter;

import com.wonders.common.constants.Const;
import com.wonders.common.context.TokenHandler;
import feign.RequestInterceptor;
import feign.RequestTemplate;

/**
 * rpc 消息头添加
 * @author youlian.fei
 */
public class FeignIntercepter implements RequestInterceptor {

    @Override
    public void apply(RequestTemplate requestTemplate) {
        requestTemplate.header(Const.CONTEXT_TOKEN, TokenHandler.getToken());
    }
}