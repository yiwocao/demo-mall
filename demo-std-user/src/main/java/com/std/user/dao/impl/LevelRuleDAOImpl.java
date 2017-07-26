package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.ILevelRuleDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.LevelRule;

@Repository("levelRuleDAOImpl")
public class LevelRuleDAOImpl extends AMybatisTemplate implements ILevelRuleDAO {

    @Override
    public int insert(LevelRule data) {
        return super.insert(NAMESPACE.concat("insert_levelRule"), data);
    }

    @Override
    public int delete(LevelRule data) {
        return super.delete(NAMESPACE.concat("delete_levelRule"), data);
    }

    @Override
    public LevelRule select(LevelRule condition) {
        return super.select(NAMESPACE.concat("select_levelRule"), condition,
            LevelRule.class);
    }

    @Override
    public long selectTotalCount(LevelRule condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_levelRule_count"), condition);
    }

    @Override
    public List<LevelRule> selectList(LevelRule condition) {
        return super.selectList(NAMESPACE.concat("select_levelRule"),
            condition, LevelRule.class);
    }

    @Override
    public List<LevelRule> selectList(LevelRule condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_levelRule"), start,
            count, condition, LevelRule.class);
    }

    @Override
    public int update(LevelRule data) {
        return super.update(NAMESPACE.concat("update_levelRule"), data);
    }
}
