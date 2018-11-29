package com.wonders.base.controller;

import com.wonders.base.domain.OrganizationDO;
import com.wonders.base.service.repo.OrganRepo;
import com.wonders.core.controller.BaseController;
import com.wonders.core.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/organ")
public class OrganController extends BaseController<OrganizationDO,Long> {

    @Autowired
    OrganRepo organRepo;

    @Override
    public BaseRepository<OrganizationDO, Long> getRepository() {
        return organRepo;
    }


}
