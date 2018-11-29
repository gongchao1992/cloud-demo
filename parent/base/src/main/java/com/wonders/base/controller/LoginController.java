package com.wonders.base.controller;

import com.wonders.base.domain.UserDO;
import com.wonders.base.dto.LoginDTO;
import com.wonders.base.service.repo.ModuleRepo;
import com.wonders.base.service.repo.UserRepo;
import com.wonders.common.annotation.Log;
import com.wonders.common.constants.Const;
import com.wonders.common.dto.UserToken;
import com.wonders.common.utils.JwtUtils;
import com.wonders.common.utils.Resp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class LoginController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    ModuleRepo moduleRepo;

    @Log("登陆")
    @PostMapping("/login")
    public Resp login(@RequestBody LoginDTO loginDTO) throws Exception {
        UserDO user = userRepo.findByName(loginDTO.getUsername());
        if (null == user || !user.getPassword().equals(loginDTO.getPassword())) {
            return Resp.error("Login error");
        }
        UserToken userToken = new UserToken(user.getName(), user.getId() + "", user.getRealName());
        String token = JwtUtils.generateToken(userToken, Const.EXPIRE_TIME);
        return Resp.ok("SUCCESS")
                .put("user", user)
                .put("modules", moduleRepo.findAll())
                .put(Const.TOKEN, token)
                .put(Const.RENEWAL_TIME, new Date(System.currentTimeMillis() + Const.EXPIRE_TIME / 2));
    }
}
