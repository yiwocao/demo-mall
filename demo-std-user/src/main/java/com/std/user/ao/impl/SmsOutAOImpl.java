package com.std.user.ao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.ISmsOutAO;
import com.std.user.bo.ICompanyBO;
import com.std.user.bo.ISmsOutBO;
import com.std.user.bo.IUserBO;
import com.std.user.domain.User;
import com.std.user.exception.BizException;

@Service
public class SmsOutAOImpl implements ISmsOutAO {

    @Autowired
    ISmsOutBO smsOutBO;

    @Autowired
    IUserBO userBO;

    @Autowired
    ICompanyBO companyBO;

    /** 
     * @see com.std.user.ao.ISmsOutAO#sendCaptcha(java.lang.String, java.lang.String)
     */
    @Override
    public void sendCaptcha(String mobile, String bizType, String kind,
            String systemCode) {
        smsOutBO.sendCaptcha(mobile, bizType, systemCode);
    }

    @Override
    public void sendContent(String tokenId, String userId, String content) {
        User user = userBO.getUser(userId);
        if (user == null) {
            throw new BizException("xn0000", "该用户编号不存在");
        }
        String systemCode = user.getSystemCode();
        String mobile = user.getMobile();
        smsOutBO.sendSmsOut(mobile, content, "001200", systemCode);
    }
}
