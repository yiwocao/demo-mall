package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.Rule;

public interface IRuleDAO extends IBaseDAO<Rule> {
    String NAMESPACE = IRuleDAO.class.getName().concat(".");

    /**
     * 更新规则
     */
    public int update(Rule data);
}
