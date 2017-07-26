package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.Rule;
import com.std.user.enums.ERuleKind;
import com.std.user.enums.ERuleType;

public interface IRuleBO extends IPaginableBO<Rule> {

    public boolean isRuleExist(String code);

    public String saveRule(Rule data);

    public int removeRule(String code);

    public int refreshRule(Rule data);

    public List<Rule> queryRuleList(Rule condition);

    public Rule getRule(String code);

    public Long getRuleByCondition(ERuleKind kind, ERuleType type, String level);
}
