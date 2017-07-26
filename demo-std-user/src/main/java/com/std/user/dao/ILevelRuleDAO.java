package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.LevelRule;

public interface ILevelRuleDAO extends IBaseDAO<LevelRule> {
    String NAMESPACE = ILevelRuleDAO.class.getName().concat(".");

    public int update(LevelRule data);
}
