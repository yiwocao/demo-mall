package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.IUReadDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.URead;

@Repository("uReadDAOImpl")
public class UReadDAOImpl extends AMybatisTemplate implements IUReadDAO {

    @Override
    public int insert(URead data) {
        return super.insert(NAMESPACE.concat("insert_uRead"), data);
    }

    @Override
    public int delete(URead data) {
        return super.delete(NAMESPACE.concat("delete_uRead"), data);
    }

    @Override
    public URead select(URead condition) {
        return super.select(NAMESPACE.concat("select_uRead"), condition,
            URead.class);
    }

    @Override
    public long selectTotalCount(URead condition) {
        return super.selectTotalCount(NAMESPACE.concat("select_uRead_count"),
            condition);
    }

    @Override
    public List<URead> selectList(URead condition) {
        return super.selectList(NAMESPACE.concat("select_uRead"), condition,
            URead.class);
    }

    @Override
    public List<URead> selectList(URead condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_uRead"), start, count,
            condition, URead.class);
    }

    @Override
    public int update(URead data) {
        return super.update(NAMESPACE.concat("update_uRead"), data);
    }

    @Override
    public int updateStatus(URead data) {
        return super.update(NAMESPACE.concat("update_uRead_status"), data);
    }
}
