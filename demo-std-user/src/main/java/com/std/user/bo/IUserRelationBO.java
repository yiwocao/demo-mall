/**
 * @Title IUserRelationBO.java 
 * @Package com.std.user.bo 
 * @Description 
 * @author xieyj  
 * @date 2016年8月31日 上午11:09:25 
 * @version V1.0   
 */
package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.User;
import com.std.user.domain.UserRelation;

/** 
 * 用户关系表
 * @author: xieyj 
 * @since: 2016年8月31日 上午11:09:25 
 * @history:
 */
public interface IUserRelationBO extends IPaginableBO<UserRelation> {
    public boolean isExistUserRelation(String userId, String toUser);

    public String saveUserRelation(String userId, String toUser,
            String systemCode);

    public int refreshUserRelation(String userId, String toUser);

    public int removeUserRelation(String userId, String toUser);

    public List<User> queryUserList(UserRelation condition);

    public Paginable<User> queryUserPage(int start, int pageSize,
            UserRelation condition);

    public List<UserRelation> queryUserRelationList(String userId, String toUser);
}
