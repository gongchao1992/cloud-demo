package com.wonders.zuul.rpc;

import com.wonders.common.intercepter.FeignIntercepter;
import com.wonders.common.utils.Resp;
import feign.Headers;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Headers("Content-Type:application/json")
@FeignClient(name = "base", configuration = FeignIntercepter.class)
public interface OAuthService {

    @GetMapping("/validatePath")
    Resp validatePath(@RequestParam("path")String path);


}
