package com.wonders.base.service.impl;

import com.wonders.base.domain.DictDO;
import com.wonders.base.service.DictService;
import com.wonders.base.service.repo.DictRepo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class DictServiceImpl implements DictService {

    private final Map<String, Map<String, List<DictDO>>> dictMap = new HashMap<>();
    private final Object mux = new Object();

    @Autowired
    DictRepo dictRepo;

    public void init() {
        synchronized (mux) {
            List<DictDO> list = dictRepo.findAll(Sort.by(Sort.Direction.valueOf("ASC"), "id", "orderNum"));
            for (DictDO dict : list) {
                addDict(dict);
            }
            System.out.println("加载数据字典条数：" + list.size());
        }
    }

    private void addDict(DictDO dict) {
        try {
            if (StringUtils.isEmpty(dict.getClazz())) {
                return;
            }
            String table = dict.getClazz().toUpperCase();
            if (!dictMap.containsKey(table)) {
                dictMap.put(table, new HashMap<>());
            }
            if (StringUtils.isEmpty(dict.getField())) {
                return;
            }
            String filed = dict.getField().toUpperCase();

            if (!dictMap.get(table).containsKey(filed)) {
                dictMap.get(table).put(filed, new ArrayList<>());
            }
            List<DictDO> list = dictMap.get(table).get(filed);
            if (list.contains(dict)) {
                list.remove(dict);
            }
            list.add(dict);
            list.sort(null);
        } catch (Exception e) {
            System.err.println("字典 id[" + dict.getId() + "]");
            e.printStackTrace();
        }
    }



    @Override
    public DictDO save(DictDO dict) {
        dictRepo.save(dict);
        addDict(dict);
        return dict;
    }

    @Override
    public int save(Iterable<DictDO> list) {
        return 0;
    }

    @Override
    public int del(Iterable<Long> ids) {
        List<DictDO> list = dictRepo.findAllById(ids);
        for (DictDO dict : list) {
            getDicts(dict.getClazz(), dict.getField()).remove(dict);
        }
        return dictRepo.deleteByIds(ids);
    }

    @Override
    public Map<String, List<DictDO>> getDicts(String table) {
        if (StringUtils.isEmpty(table)) {
            return null;
        }
        return dictMap.get(table.toUpperCase());
    }

    @Override
    public List<DictDO> getDicts(String table, String field) {
        try {
            if (StringUtils.isEmpty(table) || StringUtils.isEmpty(field)) {
                return null;
            }
            return dictMap.get(table.toUpperCase()).get(field.toUpperCase());
        } catch (Exception e) {
            System.err.println("字典 [" + table +"."+ field + "]");
            e.printStackTrace();
        }
        return new ArrayList<>();
    }

    @Override
    public DictDO getDict(String table, String field, String key) {
        List<DictDO> list = getDicts(table, field);
        for (DictDO dict : list) {
            if (dict.getKey().equals(key)) {
                return dict;
            }
        }
        return null;
    }

    @Override
    public List<DictDO> getDictsByFields(String table, Collection<String> fields) {
        if (StringUtils.isEmpty(table) || fields == null || fields.size() == 0) {
            return null;
        }
        List<DictDO> all = new ArrayList<>();
        for (String field : fields) {
            List<DictDO> childs = getDicts(table, field);
            if (childs == null) {
                System.err.println("字典加载失败 [" + table +"."+ field + "]");
                continue;
            }
            all.addAll(childs);
        }
        return all;
    }
}
