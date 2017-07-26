package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.CompanyCertificate;

public interface ICompanyCertificateDAO extends IBaseDAO<CompanyCertificate> {
    String NAMESPACE = ICompanyCertificateDAO.class.getName().concat(".");

    public int update(CompanyCertificate data);

    public int updateStatus(CompanyCertificate data);
}
