package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.IB2cSmsBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.IB2cSmsDAO;
import com.std.user.domain.B2cSms;
import com.std.user.enums.EBoolean;
import com.std.user.exception.BizException;

@Component
public class B2cSmsBOImpl extends PaginableBOImpl<B2cSms> implements IB2cSmsBO {

    @Autowired
    private IB2cSmsDAO b2cSmsDAO;

    @Override
    public boolean isB2cSmsExist(String code) {
        B2cSms condition = new B2cSms();
        condition.setCode(code);
        if (b2cSmsDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveB2cSms(B2cSms data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EGeneratePrefix.XX.getCode());
            data.setCode(code);
            data.setStatus(EBoolean.NO.getCode());
            data.setUpdateDatetime(new Date());
            b2cSmsDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeB2cSms(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            B2cSms data = new B2cSms();
            data.setCode(code);
            count = b2cSmsDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshB2cSms(B2cSms data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setUpdateDatetime(new Date());
            count = b2cSmsDAO.update(data);
        }
        return count;
    }

    @Override
    public List<B2cSms> queryB2cSmsList(B2cSms condition) {
        return b2cSmsDAO.selectList(condition);
    }

    @Override
    public B2cSms getB2cSms(String code) {
        B2cSms data = null;
        if (StringUtils.isNotBlank(code)) {
            B2cSms condition = new B2cSms();
            condition.setCode(code);
            data = b2cSmsDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该编号不存在");
            }
        }
        return data;
    }

    @Override
    public int refreshB2cSmsStatus(String code, String updater) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            B2cSms data = new B2cSms();
            data.setCode(code);
            data.setStatus(EBoolean.YES.getCode());
            data.setUpdater(updater);
            data.setUpdateDatetime(new Date());
            count = b2cSmsDAO.updateStatus(data);
        }
        return count;
    }
}
