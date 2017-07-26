/**
 * @Title UserRelationBOImpl.java 
 * @Package com.std.user.bo.impl 
 * @Description 
 * @author xieyj  
 * @date 2016年8月31日 上午11:17:49 
 * @version V1.0   
 */
package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.IUserRelationBO;
import com.std.user.bo.base.Page;
import com.std.user.bo.base.Paginable;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.IUserRelationDAO;
import com.std.user.domain.User;
import com.std.user.domain.UserRelation;
import com.std.user.enums.EBoolean;

/** 
 * 用户关系BO
 * @author: xieyj 
 * @since: 2016年8月31日 上午11:17:49 
 * @history:
 */
@Component
public class UserRelationBOImpl extends PaginableBOImpl<UserRelation> implements
        IUserRelationBO {
    @Autowired
    private IUserRelationDAO userRelationDAO;

    /** 
     * @see com.std.user.bo.IUserRelationBO#isExistUserRelation(java.lang.String, java.lang.String)
     */
    @Override
    public boolean isExistUserRelation(String userId, String toUser) {
        UserRelation condition = new UserRelation();
        condition.setUserId(userId);
        condition.setToUser(toUser);
        long count = userRelationDAO.selectTotalCount(condition);
        if (count > 0) {
            return true;
        }
        return false;
    }

    /** 
     * @see com.std.user.bo.IUserRelationBO#saveUserRelation(java.lang.String, java.lang.String)
     */
    @Override
    public String saveUserRelation(String userId, String toUser,
            String systemCode) {
        String code = null;
        if (StringUtils.isNotBlank(userId) && StringUtils.isNotBlank(toUser)) {
            UserRelation data = new UserRelation();
            code = OrderNoGenerater.generate("UR");
            data.setCode(code);
            data.setUserId(userId);
            data.setToUser(toUser);
            data.setStatus(EBoolean.YES.getCode());
            data.setUpdateDatetime(new Date());
            data.setSystemCode(systemCode);
            userRelationDAO.insert(data);
        }
        return code;
    }

    /** 
     * @see com.std.user.bo.IUserRelationBO#refreshUserRelation(java.lang.String, java.lang.String)
     */
    @Override
    public int refreshUserRelation(String userId, String toUser) {
        int count = 0;
        if (StringUtils.isNotBlank(userId) && StringUtils.isNotBlank(toUser)) {
            UserRelation data = new UserRelation();
            data.setUserId(userId);
            data.setToUser(toUser);
            data.setStatus(EBoolean.NO.getCode());
            count = userRelationDAO.updateStatus(data);
        }
        return count;
    }

    /**
     * @see com.std.user.bo.IUserRelationBO#removeUserRelation(java.lang.String, java.lang.String)
     */
    @Override
    public int removeUserRelation(String userId, String toUser) {
        int count = 0;
        if (StringUtils.isNotBlank(userId) && StringUtils.isNotBlank(toUser)) {
            UserRelation data = new UserRelation();
            data.setUserId(userId);
            data.setToUser(toUser);
            count = userRelationDAO.delete(data);
        }
        return count;
    }

    /** 
     * @see com.std.user.bo.IUserRelationBO#queryUserList(com.std.user.domain.UserRelation)
     */
    @Override
    public List<User> queryUserList(UserRelation condition) {
        return userRelationDAO.selectUserList(condition);
    }

    /** 
     * @see com.std.user.bo.IUserRelationBO#queryUserPage(int, int, com.std.user.domain.UserRelation)
     */
    @Override
    public Paginable<User> queryUserPage(int start, int pageSize,
            UserRelation condition) {
        long totalCount = userRelationDAO.selectUserTotalCount(condition);
        Paginable<User> page = new Page<User>(start, pageSize, totalCount);
        List<User> dataList = userRelationDAO.selectUserList(condition,
            page.getStart(), page.getPageSize());
        page.setList(dataList);
        return page;
    }

    @Override
    public List<UserRelation> queryUserRelationList(String userId, String toUser) {
        UserRelation condition = new UserRelation();
        condition.setUserId(userId);
        condition.setToUser(toUser);
        return userRelationDAO.selectList(condition);
    }
}
