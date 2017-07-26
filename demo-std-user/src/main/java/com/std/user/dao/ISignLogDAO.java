package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.SignLog;

/** 
 * 签到DAO层
 * @author: zuixian 
 * @since: 2016年9月18日 下午7:12:19 
 * @history:
 */
public interface ISignLogDAO extends IBaseDAO<SignLog> {
    String NAMESPACE = ISignLogDAO.class.getName().concat(".");
}
