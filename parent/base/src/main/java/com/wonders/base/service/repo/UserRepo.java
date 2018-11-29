package com.wonders.base.service.repo;

import com.wonders.base.domain.UserDO;
import com.wonders.core.repository.BaseRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepo extends BaseRepository<UserDO,Long> {

    @Query("from UserDO u where name= ?1")
    UserDO findByName(String name);

}
