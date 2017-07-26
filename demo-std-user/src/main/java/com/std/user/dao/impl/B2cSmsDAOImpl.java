package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.IB2cSmsDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.B2cSms;

@Repository("b2cSmsDAOImpl")
public class B2cSmsDAOImpl extends AMybatisTemplate implements IB2cSmsDAO {

    @Override
    public int insert(B2cSms data) {
        return super.insert(NAMESPACE.concat("insert_b2cSms"), data);
    }

    @Override
    public int delete(B2cSms data) {
        return super.delete(NAMESPACE.concat("delete_b2cSms"), data);
    }

    @Override
    public B2cSms select(B2cSms condition) {
        return super.select(NAMESPACE.concat("select_b2cSms"), condition,
            B2cSms.class);
    }

    @Override
    public long selectTotalCount(B2cSms condition) {
        return super.selectTotalCount(NAMESPACE.concat("select_b2cSms_count"),
            condition);
    }

    @Override
    public List<B2cSms> selectList(B2cSms condition) {
        return super.selectList(NAMESPACE.concat("select_b2cSms"), condition,
            B2cSms.class);
    }

    @Override
    public List<B2cSms> selectList(B2cSms condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_b2cSms"), start,
            count, condition, B2cSms.class);
    }

    /** 
     * @see com.std.user.dao.IB2cSmsDAO#update(com.std.user.domain.B2cSms)
     */
    @Override
    public int update(B2cSms data) {
        return super.update(NAMESPACE.concat("update_b2cSms"), data);

    }

    /** 
     * @see com.std.user.dao.IB2cSmsDAO#updateStatus(com.std.user.domain.B2cSms)
     */
    @Override
    public int updateStatus(B2cSms data) {
        return super.update(NAMESPACE.concat("update_b2cSms_status"), data);
    }

}
