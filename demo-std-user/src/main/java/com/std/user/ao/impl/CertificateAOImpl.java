package com.std.user.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.ICertificateAO;
import com.std.user.bo.ICertificateBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.Certificate;
import com.std.user.enums.EBoolean;
import com.std.user.exception.BizException;

@Service
public class CertificateAOImpl implements ICertificateAO {

    @Autowired
    private ICertificateBO certificateBO;

    @Override
    public String addCertificate(Certificate data) {
        return certificateBO.saveCertificate(data);
    }

    @Override
    public int editCertificate(Certificate data) {
        if (!certificateBO.isCertificateExist(data.getCode())) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return certificateBO.refreshCertificate(data);
    }

    @Override
    public int dropCertificate(String code) {
        if (!certificateBO.isCertificateExist(code)) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return certificateBO.removeCertificate(code);
    }

    @Override
    public Paginable<Certificate> queryCertificatePage(int start, int limit,
            Certificate condition) {
        return certificateBO.getPaginable(start, limit, condition);
    }

    @Override
    public List<Certificate> queryCertificateList(Certificate condition) {
        return certificateBO.queryCertificateList(condition);
    }

    @Override
    public Certificate getCertificate(String code) {
        return certificateBO.getCertificate(code);
    }

    @Override
    public int editCertificateStatus(String code, String updater, String remark) {
        if (!certificateBO.isCertificateExist(code)) {
            throw new BizException("xn0000", "该编号不存在");
        }
        Certificate data = new Certificate();
        data.setCode(code);
        data.setUpdater(updater);
        data.setRemark(remark);
        Certificate certificate = certificateBO.getCertificate(code);
        if (EBoolean.YES.getCode().equals(certificate.getStatus())) {
            data.setStatus(EBoolean.NO.getCode());
        } else {
            data.setStatus(EBoolean.YES.getCode());
        }
        return certificateBO.refreshCertificateStatus(data);
    }
}
