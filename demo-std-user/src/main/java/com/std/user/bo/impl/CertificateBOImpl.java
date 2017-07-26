package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ICertificateBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ICertificateDAO;
import com.std.user.domain.Certificate;
import com.std.user.enums.EBoolean;
import com.std.user.exception.BizException;

@Component
public class CertificateBOImpl extends PaginableBOImpl<Certificate> implements
        ICertificateBO {

    @Autowired
    private ICertificateDAO certificateDAO;

    @Override
    public boolean isCertificateExist(String code) {
        Certificate condition = new Certificate();
        condition.setCode(code);
        if (certificateDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveCertificate(Certificate data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EGeneratePrefix.ZZ.getCode());
            data.setCode(code);
            data.setUpdateDatetime(new Date());
            data.setStatus(EBoolean.YES.getCode());
            certificateDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeCertificate(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Certificate data = new Certificate();
            data.setCode(code);
            count = certificateDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshCertificate(Certificate data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setUpdateDatetime(new Date());
            count = certificateDAO.update(data);
        }
        return count;
    }

    @Override
    public List<Certificate> queryCertificateList(Certificate condition) {
        return certificateDAO.selectList(condition);
    }

    @Override
    public Certificate getCertificate(String code) {
        Certificate data = null;
        if (StringUtils.isNotBlank(code)) {
            Certificate condition = new Certificate();
            condition.setCode(code);
            data = certificateDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该资质不存在");
            }
        }
        return data;
    }

    @Override
    public int refreshCertificateStatus(Certificate data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setUpdateDatetime(new Date());
            count = certificateDAO.updateStatus(data);
        }
        return count;
    }
}
