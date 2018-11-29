package com.wonders.common.utils;

import com.wonders.common.constants.Const;
import com.wonders.common.dto.UserToken;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import java.util.Date;

/**
 * @author youlian.fei
 */
public class JwtUtils {
    /**
     *
     * @param userToken
     * @param expire
     * @return
     * @throws Exception
     */
    public static String generateToken(UserToken userToken, long expire) throws Exception {
        String token = Jwts.builder()
                .setSubject(userToken.getUsername())
                .claim(Const.CONTEXT_USER_ID, userToken.getUserId())
                .claim(Const.CONTEXT_NAME, userToken.getName())
                .claim(Const.RENEWAL_TIME,new Date(System.currentTimeMillis()+expire/2))
                .setExpiration(new Date(System.currentTimeMillis()+expire))
                .signWith(SignatureAlgorithm.HS256, Const.JWT_PRIVATE_KEY)
                .compact();
        return token;
    }

    /**
     *
     * @param token
     * @return
     * @throws Exception
     */
    public static UserToken getInfoFromToken(String token) throws Exception {
        Claims claims = Jwts.parser()
                .setSigningKey(Const.JWT_PRIVATE_KEY).parseClaimsJws(token)
                .getBody();
        return new UserToken(claims.getSubject(), claims.get(Const.CONTEXT_USER_ID).toString(),claims.get(Const.CONTEXT_NAME).toString());
    }
}
