package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ILevelRuleBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ILevelRuleDAO;
import com.std.user.domain.LevelRule;
import com.std.user.exception.BizException;

@Component
public class LevelRuleBOImpl extends PaginableBOImpl<LevelRule> implements
        ILevelRuleBO {

    @Autowired
    private ILevelRuleDAO levelRuleDAO;

    @Override
    public boolean isLevelRuleExist(String code) {
        LevelRule condition = new LevelRule();
        condition.setCode(code);
        if (levelRuleDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveLevelRule(LevelRule data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EGeneratePrefix.UZ.getCode());
            data.setCode(code);
            data.setUpdateDatetime(new Date());
            levelRuleDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeLevelRule(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            LevelRule data = new LevelRule();
            data.setCode(code);
            count = levelRuleDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshLevelRule(LevelRule data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setUpdateDatetime(new Date());
            count = levelRuleDAO.update(data);
        }
        return count;
    }

    @Override
    public List<LevelRule> queryLevelRuleList(LevelRule condition) {
        return levelRuleDAO.selectList(condition);
    }

    @Override
    public List<LevelRule> queryLevelRuleList(String systemCode) {
        LevelRule condition = new LevelRule();
        condition.setSystemCode(systemCode);
        return levelRuleDAO.selectList(condition);
    }

    @Override
    public LevelRule getLevelRule(String code) {
        LevelRule data = null;
        if (StringUtils.isNotBlank(code)) {
            LevelRule condition = new LevelRule();
            condition.setCode(code);
            data = levelRuleDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该编号不存在");
            }
        }
        return data;
    }
}
