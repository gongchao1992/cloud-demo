package com.wonders.base.controller;

import com.wonders.base.domain.UserDO;
import com.wonders.base.service.repo.UserRepo;
import com.wonders.common.annotation.Log;
import com.wonders.common.constants.Const;
import com.wonders.common.context.TokenHandler;
import com.wonders.common.utils.MD5Utils;
import com.wonders.common.utils.Resp;
import com.wonders.core.controller.BaseController;
import com.wonders.core.repository.BaseRepository;
import com.wonders.core.utils.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/user")
public class UserController extends BaseController<UserDO, Long> {

    @Autowired
    UserRepo userRepo;

    @Override
    public BaseRepository<UserDO, Long> getRepository() {
        return userRepo;
    }


    @GetMapping("/list")
    @ResponseBody
    public Resp list(@ModelAttribute PageQuery pageQuery, @RequestParam Map<String, Object> params){
        params.put("search_id_ne", TokenHandler.getUserID());
        Pageable pageable = PageRequest.of(pageQuery.getPindex(),pageQuery.getPcount(),pageQuery.getSortObj());
        Page<UserDO> page = getRepository().findAll(params, pageable);
        return Resp.page(page);
    }

    @Log("保存")
    @PostMapping("/save")
    @ResponseBody
    public Resp save(@RequestBody UserDO user){
        if(null == user.getId()){
            user.setPassword(MD5Utils.encryptPwd(user.getName(), Const.DEFAULT_USER_PWD));
        }else{
            UserDO userDb = userRepo.findById(user.getId()).get();
            user.setPassword(userDb.getPassword());
        }
        UserDO save = getRepository().save(user);
        return Resp.operate(null!=save);
    }


}
