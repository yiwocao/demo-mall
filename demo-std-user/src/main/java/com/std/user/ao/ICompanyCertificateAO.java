package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.CompanyCertificate;

public interface ICompanyCertificateAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String applyCompanyCertificate(String companyCode,
            String certificateCode, String applyUser);

    public void dropCompanyCertificate(String code);

    public void editCompanyCertificate(CompanyCertificate data);

    public void approveCompanyCertificate(String code, String approver,
            String approveResult, String approveNote);

    public Paginable<CompanyCertificate> queryCompanyCertificatePage(int start,
            int limit, CompanyCertificate condition);

    public List<CompanyCertificate> queryCompanyCertificateList(
            CompanyCertificate condition);

    public CompanyCertificate getCompanyCertificate(String code);

}
