package com.wonders.common.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * 统一返回值
 * @author youlian.fei
 */
public class Resp extends HashMap<String, Object> {

    private static final long serialVersionUID = 3717680369549406969L;

    public Resp() {
        put("code", 200);
        put("msg", "SUCCESS");
    }

    public static Resp error() {
        return error(500, "FAIL");
    }

    public static Resp operate(boolean b){
        if(b){
            return Resp.ok();
        }
        return Resp.error();
    }

    public static Resp error(String msg) {
        return error(500, msg);
    }

    public static Resp error(int code, String msg) {
        Resp resp = new Resp();
        resp.put("code", code);
        resp.put("msg", msg);
        return resp;
    }

    public static Resp ok(String msg) {
        Resp r = new Resp();
        r.put("msg", msg);
        return r;
    }

    public static Resp ok(Map<String, Object> map) {
        Resp r = new Resp();
        r.putAll(map);
        return r;
    }

    public static Resp ok() {
        return new Resp();
    }

    public static Resp error401() {
        return error(401, "You do not have permission");
    }

    public static Resp error403() {
        return error(403, "You were rejected");
    }

    public static Resp data(Object data){
        return Resp.ok().put("data",data);
    }

    public static Resp page(Object page){
        return Resp.ok().put("page",page);
    }

    @Override
    public Resp put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
