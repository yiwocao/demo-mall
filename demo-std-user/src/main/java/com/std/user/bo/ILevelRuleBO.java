package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.LevelRule;

public interface ILevelRuleBO extends IPaginableBO<LevelRule> {

    public boolean isLevelRuleExist(String code);

    public String saveLevelRule(LevelRule data);

    public int removeLevelRule(String code);

    public int refreshLevelRule(LevelRule data);

    public List<LevelRule> queryLevelRuleList(LevelRule condition);

    public List<LevelRule> queryLevelRuleList(String systemCode);

    public LevelRule getLevelRule(String code);

}
