/**
 * @Title IUserExtDAO.java 
 * @Package com.std.account.dao 
 * @Description 
 * @author xieyj  
 * @date 2016年9月18日 上午11:10:25 
 * @version V1.0   
 */
package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.UserExt;

/** 
 * @author: xieyj 
 * @since: 2016年9月18日 上午11:10:25 
 * @history:
 */
public interface IUserExtDAO extends IBaseDAO<UserExt> {
    String NAMESPACE = IUserExtDAO.class.getName().concat(".");

    /**
     * 更新用户头像
     * @param data
     * @return 
     * @create: 2016年9月18日 上午11:12:02 xieyj
     * @history:
     */
    public int updateUserPhoto(UserExt data);

    /** 
     * 更新用户信息
     * @param data
     * @return 
     * @create: 2016年9月18日 下午2:16:15 zuixian
     * @history: 
     */
    public int updateUserExt(UserExt data);

    /**
     * 更新用户位置
     * @param data
     * @return 
     * @create: 2016年9月18日 上午11:12:02 xieyj
     * @history:
     */
    public int updateUserExtLngLat(UserExt data);

    /**
     * 更新用户信息
     * @param data 
     * @create: 2017年4月7日 下午6:18:49 asus
     * @history:
     */
    public int updateWxInfo(UserExt data);
}
