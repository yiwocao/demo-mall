package com.std.user.dao;

import java.util.List;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.Company;

public interface ICompanyDAO extends IBaseDAO<Company> {
    String NAMESPACE = ICompanyDAO.class.getName().concat(".");

    public long selectTotalCountJJ(Company condition);

    public List<Company> selectListJJ(Company condition);

    public List<Company> selectListJJ(Company condition, int start, int count);

    public int update(Company data);

    public int updateLocation(Company data);

    public int updateDefault(Company data);

    public int updateHot(Company data);

    public int updatePsw(Company data);

    public int updateShelve(Company data);
}
