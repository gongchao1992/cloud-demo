package com.wonders.base.service.repo;

import com.wonders.base.domain.OrganizationDO;
import com.wonders.core.repository.BaseRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrganRepo extends BaseRepository<OrganizationDO,Long> {

}
