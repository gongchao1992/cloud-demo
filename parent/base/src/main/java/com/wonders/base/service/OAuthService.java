package com.wonders.base.service;

import com.wonders.base.domain.UserDO;
import com.wonders.base.dto.ResTreeDTO;

public interface OAuthService {

    Boolean validate(UserDO user, String path);

    ResTreeDTO getResoures(UserDO user);
}
