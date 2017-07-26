package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.Certificate;

public interface ICertificateDAO extends IBaseDAO<Certificate> {
    String NAMESPACE = ICertificateDAO.class.getName().concat(".");

    public int update(Certificate data);

    public int updateStatus(Certificate data);
}
