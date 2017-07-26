package com.std.user.bo.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ICPasswordBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ICPasswordDAO;
import com.std.user.domain.CPassword;
import com.std.user.exception.BizException;

@Component
public class CPasswordBOImpl extends PaginableBOImpl<CPassword> implements
        ICPasswordBO {

    @Autowired
    private ICPasswordDAO cPasswordDAO;

    @Override
    public boolean isCPasswordExist(String code) {
        CPassword condition = new CPassword();
        condition.setCode(code);
        if (cPasswordDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveCPassword(String type, String account, String password,
            String remark, String companyCode, String systemCode) {
        String code = OrderNoGenerater.generate(EGeneratePrefix.PW.getCode());
        CPassword data = new CPassword();
        data.setCode(code);
        data.setType(type);
        data.setAccount(account);
        data.setPassword(password);
        data.setRemark(remark);
        data.setCompanyCode(companyCode);
        cPasswordDAO.insert(data);
        return code;
    }

    @Override
    public int removeCPassword(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            CPassword data = new CPassword();
            data.setCode(code);
            count = cPasswordDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshCPassword(CPassword data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            count = cPasswordDAO.update(data);
        }
        return count;
    }

    @Override
    public List<CPassword> queryCPasswordList(CPassword condition) {
        return cPasswordDAO.selectList(condition);
    }

    @Override
    public Map<String, String> queryCPasswordList(String type,
            String companyCode, String systemCode) {
        Map<String, String> resultMap = new HashMap<String, String>();
        CPassword condition = new CPassword();
        condition.setType(type);
        condition.setCompanyCode(companyCode);
        condition.setSystemCode(systemCode);
        List<CPassword> list = cPasswordDAO.selectList(condition);
        for (CPassword cPassword : list) {
            resultMap.put(cPassword.getAccount(), cPassword.getPassword());
        }
        return resultMap;
    }

    @Override
    public CPassword getCPassword(String code) {
        CPassword data = null;
        if (StringUtils.isNotBlank(code)) {
            CPassword condition = new CPassword();
            condition.setCode(code);
            data = cPasswordDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该编号不存在");
            }
        }
        return data;
    }
}
