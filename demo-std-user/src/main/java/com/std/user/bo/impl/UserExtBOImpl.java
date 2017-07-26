package com.std.user.bo.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.IUserExtBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.dao.IUserExtDAO;
import com.std.user.domain.UserExt;

@Component
public class UserExtBOImpl extends PaginableBOImpl<UserExt> implements
        IUserExtBO {

    @Autowired
    private IUserExtDAO userExtDAO;

    /** 
     * @see com.std.user.bo.IUserExtBO#saveUserExt(java.lang.String)
     */
    @Override
    public void saveUserExt(String userId, String systemCode) {
        if (StringUtils.isNotBlank(userId)) {
            UserExt data = new UserExt();
            data.setUserId(userId);
            data.setSystemCode(systemCode);
            userExtDAO.insert(data);
        }
    }

    /** 
     * @see com.std.user.bo.IUserExtBO#saveUserExt(java.lang.String, java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public void saveUserExt(String userId, String province, String city,
            String area, String systemCode) {
        if (StringUtils.isNotBlank(userId)) {
            UserExt data = new UserExt();
            data.setUserId(userId);
            data.setProvince(province);
            data.setCity(city);
            data.setArea(area);
            data.setSystemCode(systemCode);
            userExtDAO.insert(data);
        }
    }

    /** 
     * @see com.std.user.bo.IUserExtBO#saveUserExt(java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public void saveUserExt(String userId, String photo, String gender,
            String systemCode) {
        if (StringUtils.isNotBlank(userId)) {
            UserExt data = new UserExt();
            data.setUserId(userId);
            data.setPhoto(photo);
            data.setGender(gender);
            data.setSystemCode(systemCode);
            userExtDAO.insert(data);
        }
    }

    /**
     * 更新用户头像
     * @param userId
     * @param photo
     * @return 
     * @create: 2016年10月21日 下午7:47:19 xieyj
     * @history:
     */
    @Override
    public int refreshUserPhoto(String userId, String photo) {
        int count = 0;
        if (StringUtils.isNotBlank(userId) && StringUtils.isNotBlank(photo)) {
            UserExt data = new UserExt();
            data.setUserId(userId);
            data.setPhoto(photo);
            count = userExtDAO.updateUserPhoto(data);
        }
        return count;
    }

    @Override
    public int refreshUserExt(UserExt data) {
        int count = 0;
        if (data != null && data.getUserId() != null) {
            count = userExtDAO.updateUserExt(data);
        }
        return count;
    }

    /** 
     * @see com.std.user.bo.IUserExtBO#doGetUserExt(java.lang.String)
     */
    @Override
    public UserExt getUserExt(String userId) {
        UserExt result = null;
        if (StringUtils.isNotBlank(userId)) {
            UserExt condition = new UserExt();
            condition.setUserId(userId);
            result = userExtDAO.select(condition);
        }
        return result;
    }

    /** 
     * @see com.std.user.bo.IUserExtBO#refreshUserLngLat(java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public int refreshUserExtLngLat(String userId, String longitude,
            String latitude) {
        int count = 0;
        if (StringUtils.isNotBlank(userId)) {
            UserExt data = new UserExt();
            data.setUserId(userId);
            data.setLongitude(longitude);
            data.setLatitude(latitude);
            count = userExtDAO.updateUserExtLngLat(data);
        }
        return count;
    }

    /** 
     * @see com.std.user.bo.IUserExtBO#queryUserExtList(com.std.user.domain.UserExt)
     */
    @Override
    public List<UserExt> queryUserExtList(UserExt condition) {
        return userExtDAO.selectList(condition);
    }

    @Override
    public void refreshUserExt(String userId, String headimgurl, String sex) {
        UserExt data = new UserExt();
        data.setUserId(userId);
        data.setPhoto(headimgurl);
        data.setGender(sex);
        userExtDAO.updateWxInfo(data);
    }
}
