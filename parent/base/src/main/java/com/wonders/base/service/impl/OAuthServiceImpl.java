package com.wonders.base.service.impl;

import com.wonders.base.domain.ModuleDO;
import com.wonders.base.domain.ModuleFunDO;
import com.wonders.base.domain.SubSystemDO;
import com.wonders.base.domain.UserDO;
import com.wonders.base.dto.ResTreeDTO;
import com.wonders.base.service.OAuthService;
import com.wonders.base.service.repo.ModuleFunRepo;
import com.wonders.base.service.repo.ModuleRepo;
import com.wonders.base.service.repo.SubSystemRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OAuthServiceImpl implements OAuthService {

    @Autowired
    ModuleFunRepo moduleFunRepo;

    @Autowired
    ModuleRepo moduleRepo;

    @Autowired
    SubSystemRepo subSystemRepo;

    @Override
    public Boolean validate(UserDO user, String path) {
        return true;
    }

    @Override
    public ResTreeDTO getResoures(UserDO user) {
        ResTreeDTO treeDTO = new ResTreeDTO();
        treeDTO.setUser(user);

        List<SubSystemDO> systems = subSystemRepo.findAll();
        treeDTO.setSubSystems(systems);

        List<ModuleDO> modules = moduleRepo.findAll();
        treeDTO.setModules(modules);

        List<ModuleFunDO> funs = moduleFunRepo.findAll();
        treeDTO.setModuleFuns(funs);

        return treeDTO;
    }
}
