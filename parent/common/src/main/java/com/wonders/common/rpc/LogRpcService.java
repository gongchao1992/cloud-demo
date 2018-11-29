package com.wonders.common.rpc;

import com.wonders.common.dto.LogDTO;
import com.wonders.common.intercepter.FeignIntercepter;
import com.wonders.common.utils.Resp;
import feign.Headers;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.scheduling.annotation.Async;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Headers("Content-Type:application/json")
@FeignClient(name = "base", configuration = FeignIntercepter.class)
public interface LogRpcService {
    @Async
    @PostMapping("/log/save")
    Resp save(@RequestBody LogDTO logDTO);
}
