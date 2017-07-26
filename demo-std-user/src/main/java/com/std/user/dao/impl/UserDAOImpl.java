/**
 * @Title UserDAOImpl.java 
 * @Package com.ibis.pz.impl 
 * @Description 
 * @author miyb  
 * @date 2015-2-6 上午10:22:53 
 * @version V1.0   
 */
package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.IUserDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.User;

/** 
 * @author: miyb 
 * @since: 2015-2-6 上午10:22:53 
 * @history:
 */
@Repository("userDAOImpl")
public class UserDAOImpl extends AMybatisTemplate implements IUserDAO {

    @Override
    public int insert(User data) {
        return super.insert(NAMESPACE.concat("insert_user"), data);
    }

    @Override
    public int delete(User data) {
        return 0;
    }

    @Override
    public User select(User condition) {
        return super.select(NAMESPACE.concat("select_user"), condition,
            User.class);
    }

    @Override
    public long selectTotalCount(User condition) {
        return super.selectTotalCount(NAMESPACE.concat("select_user_count"),
            condition);
    }

    @Override
    public List<User> selectList(User condition) {
        return super.selectList(NAMESPACE.concat("select_user"), condition,
            User.class);
    }

    @Override
    public List<User> selectList(User condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_user"), start, count,
            condition, User.class);
    }

    @Override
    public int insertRen(User data) {
        return super.insert(NAMESPACE.concat("insert_ren"), data);
    }

    @Override
    public int updateIdentity(User data) {
        return super.update(NAMESPACE.concat("update_identity"), data);
    }

    @Override
    public int updateRealName(User data) {
        return super.update(NAMESPACE.concat("update_real_name"), data);
    }

    @Override
    public int updateTradePwd(User data) {
        return super.update(NAMESPACE.concat("update_trade_pwd"), data);
    }

    @Override
    public int updateLoginPwd(User data) {
        return super.update(NAMESPACE.concat("update_login_pwd"), data);
    }

    @Override
    public int updateMobile(User data) {
        return super.update(NAMESPACE.concat("update_mobile"), data);
    }

    @Override
    public int updateBindMobile(User data) {
        return super.update(NAMESPACE.concat("update_bind_mobile"), data);
    }

    @Override
    public int updateStatus(User data) {
        return super.update(NAMESPACE.concat("update_status"), data);
    }

    @Override
    public int updateRole(User data) {
        return super.update(NAMESPACE.concat("update_role"), data);
    }

    /** 
     * @see com.std.user.dao.IUserDAO#updatePdf(com.std.user.domain.User)
     */
    @Override
    public int updatePdf(User data) {
        return super.update(NAMESPACE.concat("update_user_pdf"), data);

    }

    /** 
     * @see com.std.user.dao.IUserDAO#updateLoginName(com.std.user.domain.User)
     */
    @Override
    public int updateLoginName(User data) {
        return super.update(NAMESPACE.concat("update_user_loginName"), data);
    }

    @Override
    public int updateNickname(User data) {
        return super.update(NAMESPACE.concat("update_user_nickname"), data);
    }

    @Override
    public int updateCompany(User data) {
        return super.update(NAMESPACE.concat("update_user_company"), data);
    }

    /** 
     * @see com.std.user.dao.IUserDAO#update(com.std.user.domain.User)
     */
    @Override
    public int update(User data) {
        return super.update(NAMESPACE.concat("update_user"), data);
    }

    /** 
     * @see com.std.user.dao.IUserDAO#updateSupple(com.std.user.domain.User)
     */
    @Override
    public int updateSupple(User data) {
        return super.update(NAMESPACE.concat("update_user_supple"), data);
    }

    /** 
     * @see com.std.user.dao.IUserDAO#updateLevel(com.std.user.domain.User)
     */
    @Override
    public int updateLevel(User data) {
        return super.update(NAMESPACE.concat("update_level"), data);
    }

    @Override
    public int updateWxInfo(User data) {
        return super.update(NAMESPACE.concat("update_wx_info"), data);
    }

    @Override
    public int updateWxOpenId(User data) {
        return super.update(NAMESPACE.concat("update_wx_openId"), data);
    }
    
    @Override
    public List<String> selectUserIdList(User condition) {
        return super.selectList(NAMESPACE.concat("select_user_id"), condition,
        		String.class);
    }
}

