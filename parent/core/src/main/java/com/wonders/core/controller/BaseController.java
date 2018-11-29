package com.wonders.core.controller;

import com.wonders.common.annotation.Log;
import com.wonders.common.utils.Resp;
import com.wonders.core.repository.BaseRepository;
import com.wonders.core.utils.PageQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public abstract class BaseController<T, ID extends Serializable> {

    public abstract BaseRepository<T, ID> getRepository();

    @GetMapping("/list")
    @ResponseBody
    public Resp list(@ModelAttribute PageQuery pageQuery, @RequestParam Map<String, Object> params){
        Pageable pageable = PageRequest.of(pageQuery.getPindex(),pageQuery.getPcount(),pageQuery.getSortObj());
        Page<T> page = getRepository().findAll(params, pageable);
        return Resp.page(page);
    }

    @GetMapping("/get/{id}")
    @ResponseBody
    public Resp get(@PathVariable("id") ID id){
        Optional<T> target = getRepository().findById(id);
        return Resp.data(target);
    }

    @Log("保存")
    @PostMapping("/save")
    @ResponseBody
    public Resp save(@RequestBody T target){
        T save = getRepository().save(target);
        return Resp.operate(null!=save);
    }

    @Log("删除")
    @RequestMapping(path = "/del", method = RequestMethod.DELETE)
    @ResponseBody
    public Resp del(@RequestBody List<ID> ids){
        int res = getRepository().deleteByIds(ids);
        return Resp.operate(res>0);
    }

}
