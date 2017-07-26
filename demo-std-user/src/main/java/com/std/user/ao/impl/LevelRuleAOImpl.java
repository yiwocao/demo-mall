package com.std.user.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.ILevelRuleAO;
import com.std.user.bo.ILevelRuleBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.LevelRule;
import com.std.user.exception.BizException;

@Service
public class LevelRuleAOImpl implements ILevelRuleAO {

    @Autowired
    private ILevelRuleBO levelRuleBO;

    @Override
    public String addLevelRule(LevelRule data) {
        return levelRuleBO.saveLevelRule(data);
    }

    @Override
    public int dropLevelRule(String code) {
        if (!levelRuleBO.isLevelRuleExist(code)) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return levelRuleBO.removeLevelRule(code);
    }

    @Override
    public int editLevelRule(LevelRule data) {
        if (!levelRuleBO.isLevelRuleExist(data.getCode())) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return levelRuleBO.refreshLevelRule(data);
    }

    @Override
    public Paginable<LevelRule> queryLevelRulePage(int start, int limit,
            LevelRule condition) {
        return levelRuleBO.getPaginable(start, limit, condition);
    }

    @Override
    public List<LevelRule> queryLevelRuleList(LevelRule condition) {
        return levelRuleBO.queryLevelRuleList(condition);
    }

    @Override
    public LevelRule getLevelRule(String code) {
        return levelRuleBO.getLevelRule(code);
    }
}
