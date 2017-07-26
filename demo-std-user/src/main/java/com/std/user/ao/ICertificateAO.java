package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.Certificate;

public interface ICertificateAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addCertificate(Certificate data);

    public int dropCertificate(String code);

    public int editCertificate(Certificate data);

    public int editCertificateStatus(String code, String updater, String remark);

    public Paginable<Certificate> queryCertificatePage(int start, int limit,
            Certificate condition);

    public List<Certificate> queryCertificateList(Certificate condition);

    public Certificate getCertificate(String code);

}
