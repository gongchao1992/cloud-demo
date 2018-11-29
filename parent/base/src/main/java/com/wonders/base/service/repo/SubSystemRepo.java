package com.wonders.base.service.repo;

import com.wonders.base.domain.SubSystemDO;
import com.wonders.core.repository.BaseRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SubSystemRepo extends BaseRepository<SubSystemDO,Long> {
}
