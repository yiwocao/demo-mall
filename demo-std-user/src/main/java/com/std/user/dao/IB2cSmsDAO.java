package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.B2cSms;

/**
 * @author: xieyj 
 * @since: 2016年10月13日 下午6:56:00 
 * @history:
 */
public interface IB2cSmsDAO extends IBaseDAO<B2cSms> {
    String NAMESPACE = IB2cSmsDAO.class.getName().concat(".");

    public int update(B2cSms data);

    public int updateStatus(B2cSms data);

}
