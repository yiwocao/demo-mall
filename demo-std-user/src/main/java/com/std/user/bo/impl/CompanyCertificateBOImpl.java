package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ICompanyCertificateBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ICompanyCertificateDAO;
import com.std.user.domain.CompanyCertificate;
import com.std.user.enums.EBoolean;
import com.std.user.enums.EComCertificateStatus;
import com.std.user.exception.BizException;

@Component
public class CompanyCertificateBOImpl extends
        PaginableBOImpl<CompanyCertificate> implements ICompanyCertificateBO {

    @Autowired
    private ICompanyCertificateDAO companyCertificateDAO;

    @Override
    public boolean isCompanyCertificateExist(String code) {
        CompanyCertificate condition = new CompanyCertificate();
        condition.setCode(code);
        if (companyCertificateDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveCompanyCertificate(String companyCode,
            String certificateCode, String applyUser) {
        String code = null;
        if (StringUtils.isNotBlank(companyCode)
                && StringUtils.isNotBlank(certificateCode)) {
            CompanyCertificate data = new CompanyCertificate();
            code = OrderNoGenerater.generate(EGeneratePrefix.GZ.getCode());
            data.setCode(code);
            data.setCompanyCode(companyCode);
            data.setCertificateCode(certificateCode);
            data.setStatus(EComCertificateStatus.TOAPPROVE.getCode());
            data.setApplyUser(applyUser);
            data.setApplyDatetime(new Date());
            companyCertificateDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeCompanyCertificate(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            CompanyCertificate data = new CompanyCertificate();
            data.setCode(code);
            count = companyCertificateDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshCompanyCertificate(CompanyCertificate data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setApplyDatetime(new Date());
            data.setStatus(EComCertificateStatus.TOAPPROVE.getCode());
            count = companyCertificateDAO.update(data);
        }
        return count;
    }

    @Override
    public int refreshCompanyCertificateStatus(String code, String approver,
            String approveResult, String approveNote) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            CompanyCertificate data = new CompanyCertificate();
            data.setCode(code);
            if (EBoolean.YES.getCode().equals(approveResult)) {
                data.setStatus(EComCertificateStatus.APPROVE_YES.getCode());
            } else {
                data.setStatus(EComCertificateStatus.APPROVE_NO.getCode());
            }
            data.setApproveUser(approver);
            data.setApproveDatetime(new Date());
            data.setApproveNote(approveNote);
            count = companyCertificateDAO.updateStatus(data);
        }
        return count;
    }

    @Override
    public List<CompanyCertificate> queryCompanyCertificateList(
            CompanyCertificate condition) {
        return companyCertificateDAO.selectList(condition);
    }

    @Override
    public CompanyCertificate getCompanyCertificate(String code) {
        CompanyCertificate data = null;
        if (StringUtils.isNotBlank(code)) {
            CompanyCertificate condition = new CompanyCertificate();
            condition.setCode(code);
            data = companyCertificateDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该资质申请编号不存在");
            }
        }
        return data;
    }
}
