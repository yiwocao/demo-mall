package com.std.user.ao.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.ICompanyCertificateAO;
import com.std.user.bo.ICertificateBO;
import com.std.user.bo.ICompanyBO;
import com.std.user.bo.ICompanyCertificateBO;
import com.std.user.bo.ISmsOutBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.Certificate;
import com.std.user.domain.Company;
import com.std.user.domain.CompanyCertificate;
import com.std.user.enums.EBoolean;
import com.std.user.enums.EComCertificateStatus;
import com.std.user.exception.BizException;

@Service
public class CompanyCertificateAOImpl implements ICompanyCertificateAO {

    @Autowired
    private ICompanyCertificateBO companyCertificateBO;

    @Autowired
    private ICompanyBO companyBO;

    @Autowired
    private ICertificateBO certificateBO;

    @Autowired
    private ISmsOutBO smsOutBO;

    @Override
    public String applyCompanyCertificate(String companyCode,
            String certificateCode, String applyUser) {
        // 判断是否已申请该资质
        CompanyCertificate condition = new CompanyCertificate();
        condition.setCompanyCode(companyCode);
        condition.setCertificateCode(certificateCode);
        List<CompanyCertificate> list = companyCertificateBO
            .queryCompanyCertificateList(condition);
        if (CollectionUtils.isNotEmpty(list)) {
            throw new BizException("xn0000", "公司已有该资质处理的记录，无需再次申请");
        }
        return companyCertificateBO.saveCompanyCertificate(companyCode,
            certificateCode, applyUser);
    }

    @Override
    public void dropCompanyCertificate(String code) {
        CompanyCertificate data = companyCertificateBO
            .getCompanyCertificate(code);
        if (EComCertificateStatus.APPROVE_YES.getCode()
            .equals(data.getStatus())) {
            throw new BizException("xn0000", "资质申请已通过，无法删除");
        }
        companyCertificateBO.removeCompanyCertificate(code);
    }

    @Override
    public void editCompanyCertificate(CompanyCertificate data) {
        if (!companyCertificateBO.isCompanyCertificateExist(data.getCode())) {
            throw new BizException("xn0000", "该资质申请不存在");
        }
        if (EComCertificateStatus.APPROVE_YES.getCode()
            .equals(data.getStatus())) {
            throw new BizException("xn0000", "该资质申请已通过，无需修改");
        }
        companyCertificateBO.refreshCompanyCertificate(data);
    }

    @Override
    public void approveCompanyCertificate(String code, String approver,
            String approveResult, String approveNote) {
        CompanyCertificate data = companyCertificateBO
            .getCompanyCertificate(code);
        if (!EComCertificateStatus.TOAPPROVE.getCode().equals(data.getStatus())) {
            throw new BizException("xn0000", "该资质申请不是申请状态，无法审核");
        }
        Certificate certificate = certificateBO.getCertificate(data
            .getCertificateCode());
        Company company = companyBO.getCompany(data.getCompanyCode());
        companyCertificateBO.refreshCompanyCertificateStatus(code, approver,
            approveResult, approveNote);
        // 发布短信，资质审核通过
        if (EBoolean.YES.getCode().equals(approveResult)) {
            smsOutBO.sendSmsOut(company.getMobile(), "尊敬的企业，您发起的资质申请["
                    + certificate.getName() + "]已审核通过,可登录网站发布服务。",
                company.getCode(), company.getSystemCode());
        } else {
            smsOutBO.sendSmsOut(company.getMobile(), "尊敬的企业，您发起的资质申请["
                    + certificate.getName() + "]已审核不通过,原因[" + approveNote
                    + "]。请修改后重新提交", company.getCode(), company.getSystemCode());
        }
    }

    @Override
    public Paginable<CompanyCertificate> queryCompanyCertificatePage(int start,
            int limit, CompanyCertificate condition) {
        Paginable<CompanyCertificate> page = companyCertificateBO.getPaginable(
            start, limit, condition);
        List<CompanyCertificate> list = page.getList();
        if (CollectionUtils.isNotEmpty(list)) {
            for (CompanyCertificate data : list) {
                Company company = companyBO.getCompany(data.getCompanyCode());
                data.setCompany(company);
            }
        }
        return page;
    }

    @Override
    public List<CompanyCertificate> queryCompanyCertificateList(
            CompanyCertificate condition) {
        return companyCertificateBO.queryCompanyCertificateList(condition);
    }

    @Override
    public CompanyCertificate getCompanyCertificate(String code) {
        CompanyCertificate data = companyCertificateBO
            .getCompanyCertificate(code);
        Company company = companyBO.getCompany(data.getCompanyCode());
        data.setCompany(company);
        Certificate certificate = certificateBO.getCertificate(data
            .getCertificateCode());
        data.setCertificate(certificate);
        return data;
    }
}
