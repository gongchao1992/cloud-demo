package com.wonders.base.service.repo;

import com.wonders.base.domain.ModuleFunDO;
import com.wonders.core.repository.BaseRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ModuleFunRepo extends BaseRepository<ModuleFunDO, Long> {
}
