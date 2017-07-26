package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.CMaterial;

public interface ICMaterialDAO extends IBaseDAO<CMaterial> {
    String NAMESPACE = ICMaterialDAO.class.getName().concat(".");

    public int update(CMaterial data);
}
