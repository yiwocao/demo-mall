package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.ICMaterialDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.CMaterial;

@Repository("cMaterialDAOImpl")
public class CMaterialDAOImpl extends AMybatisTemplate implements ICMaterialDAO {

    @Override
    public int insert(CMaterial data) {
        return super.insert(NAMESPACE.concat("insert_cMaterial"), data);
    }

    @Override
    public int delete(CMaterial data) {
        return super.delete(NAMESPACE.concat("delete_cMaterial"), data);
    }

    @Override
    public CMaterial select(CMaterial condition) {
        return super.select(NAMESPACE.concat("select_cMaterial"), condition,
            CMaterial.class);
    }

    @Override
    public long selectTotalCount(CMaterial condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_cMaterial_count"), condition);
    }

    @Override
    public List<CMaterial> selectList(CMaterial condition) {
        return super.selectList(NAMESPACE.concat("select_cMaterial"),
            condition, CMaterial.class);
    }

    @Override
    public List<CMaterial> selectList(CMaterial condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_cMaterial"), start,
            count, condition, CMaterial.class);
    }

    @Override
    public int update(CMaterial data) {
        return super.update(NAMESPACE.concat("update_cMaterial"), data);
    }
}
