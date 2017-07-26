package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.ICPasswordDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.CPassword;

@Repository("cPasswordDAOImpl")
public class CPasswordDAOImpl extends AMybatisTemplate implements ICPasswordDAO {

    @Override
    public int insert(CPassword data) {
        return super.insert(NAMESPACE.concat("insert_cPassword"), data);
    }

    @Override
    public int delete(CPassword data) {
        return super.delete(NAMESPACE.concat("delete_cPassword"), data);
    }

    @Override
    public CPassword select(CPassword condition) {
        return super.select(NAMESPACE.concat("select_cPassword"), condition,
            CPassword.class);
    }

    @Override
    public long selectTotalCount(CPassword condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_cPassword_count"), condition);
    }

    @Override
    public List<CPassword> selectList(CPassword condition) {
        return super.selectList(NAMESPACE.concat("select_cPassword"),
            condition, CPassword.class);
    }

    @Override
    public List<CPassword> selectList(CPassword condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_cPassword"), start,
            count, condition, CPassword.class);
    }

    @Override
    public int update(CPassword data) {
        return super.update(NAMESPACE.concat("update_cPassword"), data);
    }
}
