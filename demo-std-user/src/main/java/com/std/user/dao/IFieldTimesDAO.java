package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.FieldTimes;

public interface IFieldTimesDAO extends IBaseDAO<FieldTimes> {
    String NAMESPACE = IFieldTimesDAO.class.getName().concat(".");
}
