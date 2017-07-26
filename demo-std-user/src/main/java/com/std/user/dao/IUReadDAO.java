package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.URead;

public interface IUReadDAO extends IBaseDAO<URead> {
    String NAMESPACE = IUReadDAO.class.getName().concat(".");

    public int update(URead data);

    public int updateStatus(URead data);
}
