package com.wonders.common.constants;

public class Const {
    public final static String TOKEN = "token";//请求参数
    //消息头
    public final static String CONTEXT_TOKEN = "Authorization";
    public final static String CONTEXT_USERNAME = "contextUsername";
    public final static String CONTEXT_USER_ID = "contextUserId";
    public final static String CONTEXT_NAME = "contextName";
    //加密
    public final static String JWT_PRIVATE_KEY = "wonders";
    public final static String RENEWAL_TIME = "renewalTime";

    public final static Long EXPIRE_TIME = 1000*60*60L;

    public final static String DEFAULT_USER_PWD = "123456";

}
