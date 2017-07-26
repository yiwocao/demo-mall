package com.std.user.ao.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.IRuleAO;
import com.std.user.bo.IRuleBO;
import com.std.user.bo.IUserBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.Rule;
import com.std.user.domain.User;
import com.std.user.enums.EBoolean;
import com.std.user.enums.ERuleKind;
import com.std.user.exception.BizException;

@Service
public class RuleAOImpl implements IRuleAO {

    @Autowired
    private IRuleBO ruleBO;

    @Autowired
    private IUserBO userBO;

    @Override
    public String addRule(Rule data) {
        return ruleBO.saveRule(data);
    }

    @Override
    public int editRule(Rule data) {
        if (!ruleBO.isRuleExist(data.getCode())) {
            throw new BizException("xn0000", "规则编号不存在");
        }
        return ruleBO.refreshRule(data);
    }

    @Override
    public int dropRule(String code) {
        if (!ruleBO.isRuleExist(code)) {
            throw new BizException("xn0000", "规则编号不存在");
        }
        return ruleBO.removeRule(code);
    }

    @Override
    public Paginable<Rule> queryRulePage(int start, int limit, Rule condition) {
        return ruleBO.getPaginable(start, limit, condition);
    }

    @Override
    public List<Rule> queryRuleList(Rule condition) {
        List<Rule> ruleList = ruleBO.queryRuleList(condition);
        if (CollectionUtils.sizeIsEmpty(ruleList)) {
            condition.setLevel(null);
            ruleList = ruleBO.queryRuleList(condition);
        }
        return ruleList;
    }

    @Override
    public Rule getRule(String code) {
        return ruleBO.getRule(code);
    }

    @Override
    public Rule getRuleByUserId(String userId) {
        Rule rule = null;
        User user = userBO.getUser(userId);
        if (user == null) {
            throw new BizException("xn702002", "用户不存在");
        }
        Rule condition = new Rule();
        condition.setKind(ERuleKind.JB.getCode());
        condition.setLevel(user.getLevel());
        List<Rule> ruleList = ruleBO.queryRuleList(condition);
        if (!CollectionUtils.isEmpty(ruleList)) {
            rule = ruleList.get(0);
        } else {
            condition.setLevel(EBoolean.NO.getCode());
            ruleList = ruleBO.queryRuleList(condition);
            if (!CollectionUtils.isEmpty(ruleList)) {
                rule = ruleList.get(0);
            }
        }
        return rule;
    }
}
