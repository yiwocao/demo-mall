package com.xnjr.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xnjr.mall.dao.ICaigopoolDAO;
import com.xnjr.mall.dao.base.support.AMybatisTemplate;
import com.xnjr.mall.domain.Caigopool;

@Repository("caigopoolDAOImpl")
public class CaigopoolDAOImpl extends AMybatisTemplate implements ICaigopoolDAO {

    @Override
    public int insert(Caigopool data) {
        return 0;
    }

    @Override
    public int delete(Caigopool data) {
        return 0;
    }

    @Override
    public Caigopool select(Caigopool condition) {
        return super.select(NAMESPACE.concat("select_caigopool"), condition,
            Caigopool.class);
    }

    @Override
    public Long selectTotalCount(Caigopool condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_caigopool_count"), condition);
    }

    @Override
    public List<Caigopool> selectList(Caigopool condition) {
        return super.selectList(NAMESPACE.concat("select_caigopool"),
            condition, Caigopool.class);
    }

    @Override
    public List<Caigopool> selectList(Caigopool condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_caigopool"), start,
            count, condition, Caigopool.class);
    }

    @Override
    public int addAmount(Caigopool data) {
        return super.update(NAMESPACE.concat("update_addAmount"), data);
    }

    @Override
    public int outAmount(Caigopool data) {
        return super.update(NAMESPACE.concat("update_outAmount"), data);
    }

    @Override
    public int changeRate(Caigopool data) {
        return super.update(NAMESPACE.concat("update_changeRate"), data);
    }
}
