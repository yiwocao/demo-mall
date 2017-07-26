/**
 * @Title IUserRelationAO.java 
 * @Package com.std.user.ao 
 * @Description 
 * @author xieyj  
 * @date 2016年8月31日 上午11:39:25 
 * @version V1.0   
 */
package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.User;
import com.std.user.domain.UserRelation;

/** 
 * @author: xieyj 
 * @since: 2016年8月31日 上午11:39:25 
 * @history:
 */
public interface IUserRelationAO {

    public List<User> queryUserList(UserRelation condition);

    public Paginable<User> queryUserPage(int start, int limit,
            UserRelation condition);

    /**
     * 关注某人
     * @param userId
     * @param toUser 
     * @create: 2016年8月31日 上午11:47:10 xieyj
     * @history:
     */
    public void followUser(String userId, String toUser);

    /**
     * 取消关注
     * @param userId
     * @param toUser 
     * @create: 2016年8月31日 上午11:47:30 xieyj
     * @history:
     */
    public void unfollowUser(String userId, String toUser);

    /**
     * 与上家首次建立关系
     * @param userId
     * @param toUser 
     * @create: 2016年9月2日 下午4:12:48 xieyj
     * @history:
     */
    public void firstSetRelation(String userId, String toUser);

    /**
     * 用户关系
     * @param userId
     * @param toUser
     * @return 
     * @create: 2017年5月11日 上午11:08:50 asus
     * @history:
     */
    public boolean isExistUserRelation(String userId, String toUser);
}
