/**
 * @Title UserRelationAOImpl.java 
 * @Package com.std.user.ao.impl 
 * @Description 
 * @author xieyj  
 * @date 2016年8月31日 上午11:48:23 
 * @version V1.0   
 */
package com.std.user.ao.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.IUserRelationAO;
import com.std.user.bo.IAccountBO;
import com.std.user.bo.IUserBO;
import com.std.user.bo.IUserRelationBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.User;
import com.std.user.domain.UserRelation;
import com.std.user.exception.BizException;

/** 
 * @author: xieyj 
 * @since: 2016年8月31日 上午11:48:23 
 * @history:
 */
@Service
public class UserRelationAOImpl implements IUserRelationAO {

    @Autowired
    IUserRelationBO userRelationBO;

    @Autowired
    IUserBO userBO;

    @Autowired
    IAccountBO accountBO;

    /** 
     * @see com.std.user.ao.IUserRelationAO#queryUserList(com.std.user.domain.UserRelation)
     */
    @Override
    public List<User> queryUserList(UserRelation condition) {
        return userRelationBO.queryUserList(condition);
    }

    /** 
     * @see com.std.user.ao.IUserRelationAO#queryUserPage(int, int, com.std.user.domain.UserRelation)
     */
    @Override
    public Paginable<User> queryUserPage(int start, int limit,
            UserRelation condition) {
        Paginable<User> page = userRelationBO.queryUserPage(start, limit,
            condition);
        // List<User> list = page.getList();
        // for (User user : list) {
        // if (EBoolean.YES.getCode().equals(condition.getIsGetAmount())) {
        // XN802013Res res = accountBO.getAccountDetail(user.getUserId(),
        // ECurrency.XNB.getCode());
        // if (res != null) {
        // user.setAmount(res.getAmount());
        // } else {
        // user.setAmount(0L);
        // }
        // }
        // }
        return page;
    }

    /** 
     * @see com.std.user.ao.IUserRelationAO#followUser(java.lang.String, java.lang.String)
     */
    @Override
    public void followUser(String userId, String toUserId) {
        User user = userBO.getUser(userId);
        if (user == null) {
            throw new BizException("xn702001", "用户不存在");
        }
        User toUser = userBO.getUser(toUserId);
        if (toUser == null) {
            throw new BizException("xn702001", "关注用户不存在");
        }
        // 判断两者关系是否存在
        if (userRelationBO.isExistUserRelation(userId, toUserId)) {
            throw new BizException("xn702001", "用户关系已建立");
        }
        userRelationBO.saveUserRelation(userId, toUserId, user.getSystemCode());
    }

    /** 
     * @see com.std.user.ao.IUserRelationAO#unfollowUser(java.lang.String, java.lang.String)
     */
    @Override
    public void unfollowUser(String userId, String toUserId) {
        User user = userBO.getUser(userId);
        if (user == null) {
            throw new BizException("xn702001", "用户不存在");
        }
        User toUser = userBO.getUser(toUserId);
        if (toUser == null) {
            throw new BizException("xn702001", "取消关注用户不存在");
        }
        // 判断两者关系是否存在
        if (!userRelationBO.isExistUserRelation(userId, toUserId)) {
            throw new BizException("xn702001", "用户关系未建立，无法解除");
        }
        userRelationBO.removeUserRelation(userId, toUserId);
    }

    /** 
     * @see com.std.user.ao.IUserRelationAO#firstSetRelation(java.lang.String, java.lang.String)
     */
    @Override
    public void firstSetRelation(String userId, String toUserId) {
        User user = userBO.getUser(userId);
        if (user == null) {
            throw new BizException("xn702001", "用户不存在");
        }
        User toUser = userBO.getUser(toUserId);
        if (toUser == null) {
            throw new BizException("xn702001", "上家用户不存在");
        }
        // 判断两者关系是否存在
        if (!userRelationBO.isExistUserRelation(userId, toUserId)) {
            userRelationBO.saveUserRelation(userId, toUserId,
                user.getSystemCode());
        }
    }

    @Override
    public boolean isExistUserRelation(String userId, String toUser) {
        List<UserRelation> userRelationList = userRelationBO
            .queryUserRelationList(userId, toUser);
        boolean flag = false;
        if (CollectionUtils.isNotEmpty(userRelationList)) {
            flag = true;
        }
        return flag;
    }
}
