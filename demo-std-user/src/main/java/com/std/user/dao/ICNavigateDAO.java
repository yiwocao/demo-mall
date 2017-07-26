package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.CNavigate;

public interface ICNavigateDAO extends IBaseDAO<CNavigate> {
    String NAMESPACE = ICNavigateDAO.class.getName().concat(".");

    public int update(CNavigate data);

}
