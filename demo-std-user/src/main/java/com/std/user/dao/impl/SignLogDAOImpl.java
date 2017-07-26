package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.ISignLogDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.SignLog;

/** 
 * 签到DAO实现
 * @author: zuixian 
 * @since: 2016年9月18日 下午7:16:37 
 * @history:
 */
@Repository("signLogDAOImpl")
public class SignLogDAOImpl extends AMybatisTemplate implements ISignLogDAO {

    @Override
    public int insert(SignLog data) {
        return super.insert(NAMESPACE.concat("insert_signLog"), data);
    }

    @Override
    public int delete(SignLog data) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public SignLog select(SignLog condition) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public long selectTotalCount(SignLog condition) {
        return super.selectTotalCount(NAMESPACE.concat("select_signLog_count"),
            condition);
    }

    @Override
    public List<SignLog> selectList(SignLog condition) {
        return super.selectList(NAMESPACE.concat("select_signLog"), condition,
            SignLog.class);
    }

    @Override
    public List<SignLog> selectList(SignLog condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_signLog"), start,
            count, condition, SignLog.class);
    }

}
