package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.Blacklist;

public interface IBlacklistDAO extends IBaseDAO<Blacklist> {
    String NAMESPACE = IBlacklistDAO.class.getName().concat(".");
}
