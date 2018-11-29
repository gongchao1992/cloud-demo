package com.wonders.base.controller;

import com.wonders.base.domain.ModuleFunDO;
import com.wonders.base.service.repo.ModuleFunRepo;
import com.wonders.core.controller.BaseController;
import com.wonders.core.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/moduleFun")
public class ModuleFunController  extends BaseController<ModuleFunDO, Long> {
    @Autowired
    ModuleFunRepo moduleFunRepo;
    @Override
    public BaseRepository<ModuleFunDO, Long> getRepository() {
        return moduleFunRepo;
    }
}
