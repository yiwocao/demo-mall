package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.CPassword;

public interface ICPasswordDAO extends IBaseDAO<CPassword> {
    String NAMESPACE = ICPasswordDAO.class.getName().concat(".");

    public int update(CPassword data);
}
