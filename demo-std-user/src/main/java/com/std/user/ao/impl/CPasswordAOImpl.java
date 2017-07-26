package com.std.user.ao.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.ICPasswordAO;
import com.std.user.bo.ICPasswordBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.CPassword;
import com.std.user.exception.BizException;

@Service
public class CPasswordAOImpl implements ICPasswordAO {

    @Autowired
    private ICPasswordBO cPasswordBO;

    @Override
    public String addCPassword(String type, String account, String password,
            String remark, String companyCode, String systemCode) {
        checkCPassword(null, type, account, companyCode, systemCode);
        return cPasswordBO.saveCPassword(type, account, password, remark,
            companyCode, systemCode);
    }

    @Override
    public int editCPassword(CPassword data) {
        String code = data.getCode();
        CPassword cPassword = cPasswordBO.getCPassword(code);
        checkCPassword(code, data.getType(), data.getAccount(),
            data.getCompanyCode(), cPassword.getSystemCode());
        return cPasswordBO.refreshCPassword(data);
    }

    private void checkCPassword(String code, String type, String account,
            String companyCode, String systemCode) {
        CPassword condition = new CPassword();
        condition.setType(type);
        condition.setAccount(account);
        condition.setCompanyCode(companyCode);
        condition.setSystemCode(systemCode);
        List<CPassword> list = cPasswordBO.queryCPasswordList(condition);
        if (CollectionUtils.isNotEmpty(list)) {
            if (list.size() > 0) {
                if (StringUtils.isBlank(code)) {
                    throw new BizException("xn0000", "该账号已存在");
                } else {
                    CPassword cpassword = list.get(0);
                    if (!code.equals(cpassword.getCode())) {
                        throw new BizException("xn0000", "该账号已存在");
                    }
                }
            }
        }
    }

    @Override
    public int dropCPassword(String code) {
        if (!cPasswordBO.isCPasswordExist(code)) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return cPasswordBO.removeCPassword(code);
    }

    @Override
    public Paginable<CPassword> queryCPasswordPage(int start, int limit,
            CPassword condition) {
        return cPasswordBO.getPaginable(start, limit, condition);
    }

    @Override
    public List<CPassword> queryCPasswordList(CPassword condition) {
        return cPasswordBO.queryCPasswordList(condition);
    }

    @Override
    public CPassword getCPassword(String code) {
        return cPasswordBO.getCPassword(code);
    }
}
