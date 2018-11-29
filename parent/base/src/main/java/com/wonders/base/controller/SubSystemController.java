package com.wonders.base.controller;

import com.wonders.base.domain.SubSystemDO;
import com.wonders.base.service.repo.SubSystemRepo;
import com.wonders.core.controller.BaseController;
import com.wonders.core.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/subSystem")
public class SubSystemController extends BaseController<SubSystemDO, Long> {

    @Autowired
    SubSystemRepo subSystemRepo;

    @Override
    public BaseRepository<SubSystemDO, Long> getRepository() {
        return subSystemRepo;
    }
}
