package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.ICIntentionDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.CIntention;

@Repository("cIntentionDAOImpl")
public class CIntentionDAOImpl extends AMybatisTemplate implements
        ICIntentionDAO {

    @Override
    public int insert(CIntention data) {
        return super.insert(NAMESPACE.concat("insert_cIntention"), data);
    }

    @Override
    public int delete(CIntention data) {
        return super.delete(NAMESPACE.concat("delete_cIntention"), data);
    }

    @Override
    public CIntention select(CIntention condition) {
        return super.select(NAMESPACE.concat("select_cIntention"), condition,
            CIntention.class);
    }

    @Override
    public long selectTotalCount(CIntention condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_cIntention_count"), condition);
    }

    @Override
    public List<CIntention> selectList(CIntention condition) {
        return super.selectList(NAMESPACE.concat("select_cIntention"),
            condition, CIntention.class);
    }

    @Override
    public List<CIntention> selectList(CIntention condition, int start,
            int count) {
        return super.selectList(NAMESPACE.concat("select_cIntention"), start,
            count, condition, CIntention.class);
    }

    @Override
    public int update(CIntention data) {
        return super.update(NAMESPACE.concat("update_cIntention"), data);
    }
}
