package com.wonders.base.controller;

import com.wonders.base.domain.LogDO;
import com.wonders.base.service.repo.LogRepo;
import com.wonders.common.utils.Resp;
import com.wonders.core.controller.BaseController;
import com.wonders.core.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/log")
public class LogController extends BaseController<LogDO, Long> {

    @Autowired
    LogRepo logRepo;

    @Override
    public BaseRepository<LogDO, Long> getRepository() {
        return logRepo;
    }

    @PostMapping("/save")
    @ResponseBody
    public Resp save(@RequestBody LogDO target){
        LogDO save = logRepo.save(target);
        return Resp.operate(null!=save);
    }
}
