package com.wonders.base.controller;

import com.wonders.base.domain.ModuleDO;
import com.wonders.base.service.repo.ModuleRepo;
import com.wonders.core.controller.BaseController;
import com.wonders.core.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/module")
public class ModuleController extends BaseController<ModuleDO, Long> {
    @Autowired
    ModuleRepo moduleRepo;
    @Override
    public BaseRepository<ModuleDO, Long> getRepository() {
        return moduleRepo;
    }
}
