package com.std.user.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.std.user.ao.IB2cSmsAO;
import com.std.user.bo.IB2cSmsBO;
import com.std.user.bo.ICompanyBO;
import com.std.user.bo.ISmsOutBO;
import com.std.user.bo.IUReadBO;
import com.std.user.bo.IUserBO;
import com.std.user.bo.base.Paginable;
import com.std.user.common.PropertiesUtil;
import com.std.user.domain.B2cSms;
import com.std.user.domain.Company;
import com.std.user.domain.User;
import com.std.user.enums.EB2cSmsType;
import com.std.user.enums.EBoolean;
import com.std.user.enums.EUserKind;
import com.std.user.exception.BizException;
import com.std.user.sent.JPushClientSend;

@Service
public class B2cSmsAOImpl implements IB2cSmsAO {

    @Autowired
    private IB2cSmsBO b2cSmsBO;

    @Autowired
    private IUserBO userBO;

    @Autowired
    private IUReadBO uReadBO;

    @Autowired
    private ISmsOutBO smsOutBO;

    @Autowired
    private ICompanyBO companyBO;

    @Override
    public String addB2cSms(B2cSms data) {
        return b2cSmsBO.saveB2cSms(data);
    }

    @Override
    public int editB2cSms(B2cSms data) {
        if (!b2cSmsBO.isB2cSmsExist(data.getCode())) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return b2cSmsBO.refreshB2cSms(data);
    }

    @Override
    public int dropB2cSms(String code) {
        if (!b2cSmsBO.isB2cSmsExist(code)) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return b2cSmsBO.removeB2cSms(code);
    }

    @Override
    @Transactional
    public int publishB2cSms(String code, String updater) {
        // 读取等级用户，生成阅读记录
        B2cSms data = b2cSmsBO.getB2cSms(code);
        if (!EBoolean.NO.getCode().equals(data.getStatus())) {
            throw new BizException("xn0000", "该记录已发布");
        }
        User condition = new User();
        if (!EBoolean.NO.getCode().equals(data.getToCompany())) {
            condition.setCompanyCode(data.getToCompany());
        }
        if (!EBoolean.NO.getCode().equals(data.getToLevel())) {
            condition.setLevel(data.getToLevel());
        }
        if (!EBoolean.NO.getCode().equals(data.getToUser())) {
            condition.setUserId(data.getToUser());
        }
        condition.setKind(EUserKind.F1.getCode());
        List<User> userList = userBO.queryUserList(condition);
        // 判断是极光推送还是站内信
        if (EB2cSmsType.NOTICE.getCode().equals(data.getType())
                || EB2cSmsType.NEWS.getCode().equals(data.getType())) {
            for (User user : userList) {
                uReadBO.saveURead(code, user.getUserId());
            }
        } else if (EB2cSmsType.APP_PUSH.getCode().equals(data.getType())) {
            JPushClientSend.toSendPush(PropertiesUtil.Config.APP_KEY,
                PropertiesUtil.Config.MASTER_SECRET, data.getTitle());
        } else if (EB2cSmsType.SMS.getCode().equals(data.getType())) {
            for (User user : userList) {
                Company company = companyBO.getCompany(user.getCompanyCode());
                smsOutBO.sendSmsOut(user.getMobile(), data.getTitle() + "("
                        + company.getName() + ")", "805123",
                    data.getCompanyCode());
                // 统计商户发了多少短信
                uReadBO.saveURead(code, user.getUserId());
            }
        }
        return b2cSmsBO.refreshB2cSmsStatus(code, updater);
    }

    @Override
    public Paginable<B2cSms> queryB2cSmsPage(int start, int limit,
            B2cSms condition) {
        return b2cSmsBO.getPaginable(start, limit, condition);
    }

    @Override
    public List<B2cSms> queryB2cSmsList(B2cSms condition) {
        return b2cSmsBO.queryB2cSmsList(condition);
    }

    @Override
    public B2cSms getB2cSms(String code) {
        return b2cSmsBO.getB2cSms(code);
    }
}
