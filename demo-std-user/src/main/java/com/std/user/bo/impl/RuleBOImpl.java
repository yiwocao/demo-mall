package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.IRuleBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.IRuleDAO;
import com.std.user.domain.Rule;
import com.std.user.enums.EBoolean;
import com.std.user.enums.EPrefixCode;
import com.std.user.enums.ERuleKind;
import com.std.user.enums.ERuleType;
import com.std.user.exception.BizException;

@Component
public class RuleBOImpl extends PaginableBOImpl<Rule> implements IRuleBO {

    @Autowired
    private IRuleDAO ruleDAO;

    @Override
    public boolean isRuleExist(String code) {
        Rule condition = new Rule();
        condition.setCode(code);
        if (ruleDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveRule(Rule data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EPrefixCode.RULE.getCode());
            data.setCode(code);
            data.setUpdateDatetime(new Date());
            ruleDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeRule(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Rule data = new Rule();
            data.setCode(code);
            count = ruleDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshRule(Rule data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setUpdateDatetime(new Date());
            count = ruleDAO.update(data);
        }
        return count;
    }

    @Override
    public List<Rule> queryRuleList(Rule condition) {
        return ruleDAO.selectList(condition);
    }

    @Override
    public Rule getRule(String code) {
        Rule data = null;
        if (StringUtils.isNotBlank(code)) {
            Rule condition = new Rule();
            condition.setCode(code);
            data = ruleDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "规则编号不存在");
            }
        }
        return data;
    }

    /** 
     * @see com.std.forum.bo.IRuleBO#getRuleByCondition(com.std.forum.enums.ERuleKind, com.std.forum.enums.ERuleType, java.lang.String)
     */
    @Override
    public Long getRuleByCondition(ERuleKind kind, ERuleType type, String level) {
        // 先查询专门等级，如果没有，查全局的
        Long amount = 0L;
        Rule condition = new Rule();
        condition.setKind(kind.getCode());
        condition.setType(type.getCode());
        condition.setLevel(level);
        List<Rule> ruleList = ruleDAO.selectList(condition);
        if (CollectionUtils.isNotEmpty(ruleList)) {
            Rule rule = ruleList.get(0);
            amount = Long.valueOf(rule.getValue());
        }
        if (amount == 0L) {
            Rule allCondition = new Rule();
            allCondition.setKind(kind.getCode());
            allCondition.setType(type.getCode());
            allCondition.setLevel(EBoolean.NO.getCode());
            List<Rule> allRuleList = ruleDAO.selectList(allCondition);
            if (CollectionUtils.isNotEmpty(allRuleList)) {
                Rule rule = allRuleList.get(0);
                amount = Long.valueOf(rule.getValue());
            }
        }
        return amount;
    }
}
