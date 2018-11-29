package com.wonders.base.controller;

import com.wonders.base.domain.DictDO;
import com.wonders.base.service.DictService;
import com.wonders.base.service.repo.DictRepo;
import com.wonders.base.service.repo.ModuleRepo;
import com.wonders.base.service.repo.SubSystemRepo;
import com.wonders.common.annotation.Log;
import com.wonders.common.utils.Resp;
import com.wonders.core.controller.BaseController;
import com.wonders.core.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/dict")
public class DictController extends BaseController<DictDO, Long> {

    @Autowired
    DictRepo dictRepo;

    @Autowired
    DictService dictService;

    @Autowired
    ModuleRepo moduleRepo;

    @Autowired
    SubSystemRepo subSystemRepo;

    @Override
    public BaseRepository<DictDO, Long> getRepository() {
        return dictRepo;
    }

    @Log("保存")
    @PostMapping("/save")
    @ResponseBody
    @Override
    public Resp save(@RequestBody DictDO target) {
        DictDO save = dictService.save(target);
        return Resp.operate(null != save);
    }

    @Log("删除")
    @RequestMapping(path = "/del", method = RequestMethod.DELETE)
    @ResponseBody
    @Override
    public Resp del(@RequestBody List<Long> ids) {
        int res = dictService.del(ids);
        return Resp.operate(res > 0);
    }


    @GetMapping(path = "/getModule")
    @ResponseBody
    public Resp getModuleDict() {
        return Resp.ok()
                .put("subSystems", subSystemRepo.findAll())
                .put("modules", moduleRepo.findAll());
    }

    @RequestMapping(path = "/getSubSys", method = RequestMethod.GET)
    @ResponseBody
    public Resp getSubSysDict() {
        return Resp.data(subSystemRepo.findAll());
    }

}
