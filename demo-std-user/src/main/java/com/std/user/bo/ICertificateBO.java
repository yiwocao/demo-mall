package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.Certificate;

public interface ICertificateBO extends IPaginableBO<Certificate> {

    public boolean isCertificateExist(String code);

    public String saveCertificate(Certificate data);

    public int removeCertificate(String code);

    public int refreshCertificate(Certificate data);

    public int refreshCertificateStatus(Certificate data);

    public List<Certificate> queryCertificateList(Certificate condition);

    public Certificate getCertificate(String code);

}
