package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.LevelRule;

public interface ILevelRuleAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addLevelRule(LevelRule data);

    public int dropLevelRule(String code);

    public int editLevelRule(LevelRule data);

    public Paginable<LevelRule> queryLevelRulePage(int start, int limit,
            LevelRule condition);

    public List<LevelRule> queryLevelRuleList(LevelRule condition);

    public LevelRule getLevelRule(String code);

}
