/**
 * @Title IUserRelationDAO.java 
 * @Package com.std.user.dao 
 * @Description 
 * @author xieyj  
 * @date 2016年8月31日 上午11:00:24 
 * @version V1.0   
 */
package com.std.user.dao;

import java.util.List;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.User;
import com.std.user.domain.UserRelation;

/** 
 * @author: xieyj 
 * @since: 2016年8月31日 上午11:00:24 
 * @history:
 */
public interface IUserRelationDAO extends IBaseDAO<UserRelation> {
    String NAMESPACE = IUserRelationDAO.class.getName().concat(".");

    // 更新关系表状态
    public int updateStatus(UserRelation data);

    public long selectUserTotalCount(UserRelation condition);

    public List<User> selectUserList(UserRelation condition);

    public List<User> selectUserList(UserRelation condition, int start,
            int count);
}
