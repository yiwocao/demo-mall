package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.CompanyCertificate;

public interface ICompanyCertificateBO extends IPaginableBO<CompanyCertificate> {

    public boolean isCompanyCertificateExist(String code);

    public String saveCompanyCertificate(String companyCode,
            String certificateCode, String applyUser);

    public int removeCompanyCertificate(String code);

    public int refreshCompanyCertificate(CompanyCertificate data);

    public int refreshCompanyCertificateStatus(String code, String approver,
            String approveResult, String approveNote);

    public List<CompanyCertificate> queryCompanyCertificateList(
            CompanyCertificate condition);

    public CompanyCertificate getCompanyCertificate(String code);

}
