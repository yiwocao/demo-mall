package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.CIntention;

public interface ICIntentionDAO extends IBaseDAO<CIntention> {
    String NAMESPACE = ICIntentionDAO.class.getName().concat(".");

    public int update(CIntention data);
}
