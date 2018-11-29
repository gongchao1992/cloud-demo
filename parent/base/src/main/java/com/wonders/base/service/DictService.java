package com.wonders.base.service;

import com.wonders.base.domain.DictDO;

import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface DictService {

    DictDO save(DictDO dict);

    int save(Iterable<DictDO> list);

    int del(Iterable<Long> ids);

    Map<String, List<DictDO>> getDicts(String table);

    List<DictDO> getDicts(String table, String field);

    DictDO getDict(String table, String field, String key);

    List<DictDO> getDictsByFields(String table, Collection<String> fields);
}
