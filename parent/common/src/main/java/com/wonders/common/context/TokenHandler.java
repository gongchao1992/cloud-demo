package com.wonders.common.context;

import com.wonders.common.constants.Const;

import java.util.HashMap;
import java.util.Map;

/**
 * 请求上下文
 * @author youlian.fei
 */
public class TokenHandler {
    public static ThreadLocal<Map<String, Object>> threadLocal = new ThreadLocal<Map<String, Object>>();

    public static void set(String key, Object value) {
        Map<String, Object> map = threadLocal.get();
        if (map == null) {
            map = new HashMap<String, Object>();
            threadLocal.set(map);
        }
        map.put(key, value);
    }

    public static Object get(String key) {
        Map<String, Object> map = threadLocal.get();
        if (map == null) {
            map = new HashMap<String, Object>();
            threadLocal.set(map);
        }
        return map.get(key);
    }

    public static String getUserID() {
        Object value = get(Const.CONTEXT_USER_ID);
        return returnObjectValue(value);
    }

    public static String getUsername() {
        Object value = get(Const.CONTEXT_USERNAME);
        return returnObjectValue(value);
    }


    public static String getName() {
        Object value = get(Const.CONTEXT_NAME);
        return returnObjectValue(value);
    }

    public static String getToken() {
        Object value = get(Const.CONTEXT_TOKEN);
        return returnObjectValue(value);
    }

    public static void setToken(String token) {
        set(Const.CONTEXT_TOKEN, token);
    }

    public static void setName(String name) {
        set(Const.CONTEXT_NAME, name);
    }

    public static void setUserID(String userID) {
        set(Const.CONTEXT_USER_ID, userID);
    }

    public static void setUsername(String username) {
        set(Const.CONTEXT_USERNAME, username);
    }

    private static String returnObjectValue(Object value) {
        return value == null ? null : value.toString();
    }

    public static void remove() {
        threadLocal.remove();
    }

}
