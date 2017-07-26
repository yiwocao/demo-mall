package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.ICertificateDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.Certificate;

@Repository("certificateDAOImpl")
public class CertificateDAOImpl extends AMybatisTemplate implements
        ICertificateDAO {

    @Override
    public int insert(Certificate data) {
        return super.insert(NAMESPACE.concat("insert_certificate"), data);
    }

    @Override
    public int delete(Certificate data) {
        return super.delete(NAMESPACE.concat("delete_certificate"), data);
    }

    @Override
    public Certificate select(Certificate condition) {
        return super.select(NAMESPACE.concat("select_certificate"), condition,
            Certificate.class);
    }

    @Override
    public long selectTotalCount(Certificate condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_certificate_count"), condition);
    }

    @Override
    public List<Certificate> selectList(Certificate condition) {
        return super.selectList(NAMESPACE.concat("select_certificate"),
            condition, Certificate.class);
    }

    @Override
    public List<Certificate> selectList(Certificate condition, int start,
            int count) {
        return super.selectList(NAMESPACE.concat("select_certificate"), start,
            count, condition, Certificate.class);
    }

    @Override
    public int update(Certificate data) {
        return super.update(NAMESPACE.concat("update_certificate"), data);
    }

    @Override
    public int updateStatus(Certificate data) {
        return super
            .update(NAMESPACE.concat("update_certificate_status"), data);
    }
}
