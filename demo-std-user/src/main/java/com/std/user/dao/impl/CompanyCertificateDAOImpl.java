package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.ICompanyCertificateDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.CompanyCertificate;

@Repository("companyCertificateDAOImpl")
public class CompanyCertificateDAOImpl extends AMybatisTemplate implements
        ICompanyCertificateDAO {

    @Override
    public int insert(CompanyCertificate data) {
        return super
            .insert(NAMESPACE.concat("insert_companyCertificate"), data);
    }

    @Override
    public int delete(CompanyCertificate data) {
        return super
            .delete(NAMESPACE.concat("delete_companyCertificate"), data);
    }

    @Override
    public CompanyCertificate select(CompanyCertificate condition) {
        return super.select(NAMESPACE.concat("select_companyCertificate"),
            condition, CompanyCertificate.class);
    }

    @Override
    public long selectTotalCount(CompanyCertificate condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_companyCertificate_count"), condition);
    }

    @Override
    public List<CompanyCertificate> selectList(CompanyCertificate condition) {
        return super.selectList(NAMESPACE.concat("select_companyCertificate"),
            condition, CompanyCertificate.class);
    }

    @Override
    public List<CompanyCertificate> selectList(CompanyCertificate condition,
            int start, int count) {
        return super.selectList(NAMESPACE.concat("select_companyCertificate"),
            start, count, condition, CompanyCertificate.class);
    }

    @Override
    public int update(CompanyCertificate data) {
        return super
            .update(NAMESPACE.concat("update_companyCertificate"), data);
    }

    /** 
     * @see com.std.user.dao.ICompanyCertificateDAO#updateStatus(com.std.user.domain.CompanyCertificate)
     */
    @Override
    public int updateStatus(CompanyCertificate data) {
        return super.update(
            NAMESPACE.concat("update_companyCertificate_status"), data);
    }
}
