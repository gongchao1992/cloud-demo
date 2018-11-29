package com.wonders.base.dto;

import com.wonders.base.domain.ModuleDO;
import com.wonders.base.domain.ModuleFunDO;
import com.wonders.base.domain.SubSystemDO;
import com.wonders.base.domain.UserDO;

import java.util.List;

public class ResTreeDTO {
    private UserDO user;
    private List<SubSystemDO> subSystems;
    private List<ModuleDO> modules;
    private List<ModuleFunDO> moduleFuns;

    public UserDO getUser() {
        return user;
    }

    public void setUser(UserDO user) {
        this.user = user;
    }

    public List<SubSystemDO> getSubSystems() {
        return subSystems;
    }

    public void setSubSystems(List<SubSystemDO> subSystems) {
        this.subSystems = subSystems;
    }

    public List<ModuleDO> getModules() {
        return modules;
    }

    public void setModules(List<ModuleDO> modules) {
        this.modules = modules;
    }

    public List<ModuleFunDO> getModuleFuns() {
        return moduleFuns;
    }

    public void setModuleFuns(List<ModuleFunDO> moduleFuns) {
        this.moduleFuns = moduleFuns;
    }
}
