package com.wonders.base.service.repo;

import com.wonders.base.domain.ModuleDO;
import com.wonders.core.repository.BaseRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ModuleRepo extends BaseRepository<ModuleDO, Long> {

    @Query("from ModuleDO m where  m.parent is null")
    List<ModuleDO> findDict();
}
