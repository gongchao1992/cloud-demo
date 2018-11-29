package com.wonders.common.utils;


import org.apache.commons.codec.digest.DigestUtils;

public class MD5Utils {

    /**
     * 生成加密密码
     * @param userName
     * @param password
     * @return
     */
    public static String encryptPwd(String userName, String password) {
        return DigestUtils.md5Hex(userName + password);
    }

    /**
     * 生成摘要信息
     * @used TODO
     * @param content
     * @return
     */
    public static String biuldSummary(String content) {
        return DigestUtils.md5Hex(content);
    }

}
