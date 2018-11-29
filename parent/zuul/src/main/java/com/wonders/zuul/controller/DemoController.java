package com.wonders.zuul.controller;

import com.wonders.common.dto.LogDTO;
import com.wonders.common.rpc.LogRpcService;
import com.wonders.common.utils.Resp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @Autowired
    LogRpcService logRpcService;

    @GetMapping("/demo")
    public Resp demo(){

        return  logRpcService.save(new LogDTO());
//        return Resp.ok();
    }
}
