package com.xnjr.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xnjr.mall.dao.ICaigopoolBackDAO;
import com.xnjr.mall.dao.base.support.AMybatisTemplate;
import com.xnjr.mall.domain.CaigopoolBack;

@Repository("caigopoolBackDAOImpl")
public class CaigopoolBackDAOImpl extends AMybatisTemplate implements
        ICaigopoolBackDAO {

    @Override
    public int insert(CaigopoolBack data) {
        return super.insert(NAMESPACE.concat("insert_caigopoolBack"), data);
    }

    @Override
    public int delete(CaigopoolBack data) {
        return 0;
    }

    @Override
    public CaigopoolBack select(CaigopoolBack condition) {
        return super.select(NAMESPACE.concat("select_caigopoolBack"),
            condition, CaigopoolBack.class);
    }

    @Override
    public Long selectTotalCount(CaigopoolBack condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_caigopoolBack_count"), condition);
    }

    @Override
    public List<CaigopoolBack> selectList(CaigopoolBack condition) {
        return super.selectList(NAMESPACE.concat("select_caigopoolBack"),
            condition, CaigopoolBack.class);
    }

    @Override
    public List<CaigopoolBack> selectList(CaigopoolBack condition, int start,
            int count) {
        return super.selectList(NAMESPACE.concat("select_caigopoolBack"),
            start, count, condition, CaigopoolBack.class);
    }

}
