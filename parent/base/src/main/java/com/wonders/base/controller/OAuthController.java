package com.wonders.base.controller;

import com.wonders.base.domain.UserDO;
import com.wonders.base.dto.ResTreeDTO;
import com.wonders.base.service.OAuthService;
import com.wonders.base.service.repo.UserRepo;
import com.wonders.common.context.TokenHandler;
import com.wonders.common.utils.Resp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OAuthController {

    @Autowired
    OAuthService oAuthService;

    @Autowired
    UserRepo userRepo;

    @GetMapping("/validatePath")
    public Resp validatePath(@RequestParam("path")String path){
        String userId = TokenHandler.getUserID();
        UserDO user = userRepo.getOne(Long.valueOf(userId));
        Boolean result = oAuthService.validate(user, path);
        return Resp.data(result);
    }

    @GetMapping("/getResoures")
    public Resp getResoures(){
        String userId = TokenHandler.getUserID();
        UserDO user = userRepo.getOne(Long.valueOf(userId));
        ResTreeDTO treeDTO = oAuthService.getResoures(user);
        return Resp.data(treeDTO);
    }
}
