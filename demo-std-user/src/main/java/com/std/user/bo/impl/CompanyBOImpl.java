package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ICompanyBO;
import com.std.user.bo.base.Page;
import com.std.user.bo.base.Paginable;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.common.MD5Util;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ICompanyDAO;
import com.std.user.domain.Company;
import com.std.user.enums.EBoolean;
import com.std.user.exception.BizException;

@Component
public class CompanyBOImpl extends PaginableBOImpl<Company> implements
        ICompanyBO {

    @Autowired
    private ICompanyDAO companyDAO;

    @Override
    public boolean isCompanyExist(String code) {
        Company condition = new Company();
        condition.setCode(code);
        if (companyDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveCompany(Company data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EGeneratePrefix.COM.getCode());
            data.setCode(code);
            // 新增第一家公司，为默认城市,后续默认为否
            long count = companyDAO.selectTotalCount(null);
            if (count == 0) {
                data.setIsDefault(EBoolean.YES.getCode());
            } else {
                data.setIsDefault(EBoolean.NO.getCode());
            }
            data.setUpdateDatetime(new Date());
            // 密码MD5加密
            data.setPassword(MD5Util.md5(data.getPassword()));
            data.setIsHot(EBoolean.NO.getCode());
            companyDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeCompany(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Company data = new Company();
            data.setCode(code);
            count = companyDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshCompany(Company data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setUpdateDatetime(new Date());
            count = companyDAO.update(data);
        }
        return count;
    }

    @Override
    public List<Company> queryCompanyList(Company condition) {
        List<Company> list = null;
        if (null != condition.getCertificateType()) {
            list = companyDAO.selectListJJ(condition);
        } else {
            list = companyDAO.selectList(condition);
        }
        return list;
    }

    @Override
    public Paginable<Company> getPaginableJJ(int start, int pageSize,
            Company condition) {
        prepare(condition);
        long totalCount = companyDAO.selectTotalCountJJ(condition);
        Paginable<Company> page = new Page<Company>(start, pageSize, totalCount);
        List<Company> dataList = companyDAO.selectListJJ(condition,
            page.getStart(), page.getPageSize());
        page.setList(dataList);
        return page;
    }

    @Override
    public Company getCompany(String code) {
        Company data = null;
        if (StringUtils.isNotBlank(code)) {
            Company condition = new Company();
            condition.setCode(code);
            data = companyDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该公司编号不存在");
            }
        }
        return data;
    }

    @Override
    public int refreshCompanyLocation(String code, String location,
            String updater) {
        Company data = new Company();
        data.setCode(code);
        data.setLocation(location);
        data.setUpdater(updater);
        data.setUpdateDatetime(new Date());
        return companyDAO.updateLocation(data);
    }

    @Override
    public int refreshCompanyDefault(String code, String systemCode) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Company data = new Company();
            data.setCode(code);
            // 先找出默认的公司
            Company defCompany = this.getDefaultCompany(systemCode);
            // 若原本就有默认公司
            if (defCompany != null) {
                // 如果默认公司与目的公司相同，则将取消其默认
                // 如果不相同，则取消默认公司的默认，将目的公司设置为默认
                if (defCompany.getCode().equals(data.getCode())) {
                    data.setIsDefault(EBoolean.NO.getCode());
                    count = companyDAO.updateDefault(data);
                } else {
                    defCompany.setIsDefault(EBoolean.NO.getCode());
                    companyDAO.updateDefault(defCompany);
                    data.setIsDefault(EBoolean.YES.getCode());
                    count = companyDAO.updateDefault(data);
                }
            } else {
                // 若原本无默认公司，则直接将目的公司设置为默认
                data.setIsDefault(EBoolean.YES.getCode());
                count = companyDAO.updateDefault(data);
            }
            // 效果：至多只有一个默认公司
        }
        return count;
    }

    @Override
    public int refreshCompanyHot(Company data) {
        if (data == null) {
            throw new BizException("xn0000", "该公司不存在");
        }
        data.setUpdateDatetime(new Date());
        return companyDAO.updateHot(data);
    }

    @Override
    public Company getCompanyByUserId(String userId) {
        Company data = null;
        if (StringUtils.isNotBlank(userId)) {
            Company condition = new Company();
            condition.setUserId(userId);
            data = companyDAO.select(condition);
        }
        return data;
    }

    /** 
     * @see com.std.user.bo.ICompanyBO#getDefaultCompany()
     */
    @Override
    public Company getDefaultCompany(String systemCode) {
        Company result = null;
        Company condition = new Company();
        condition.setIsDefault(EBoolean.YES.getCode());
        condition.setSystemCode(systemCode);
        List<Company> companyList = companyDAO.selectList(condition);
        if (CollectionUtils.isNotEmpty(companyList)) {
            result = companyList.get(0);
        }
        return result;
    }

    @Override
    public Company getCompanyByDomain(String domain, String systemCode) {
        Company result = null;
        Company condition = new Company();
        condition.setDomain(domain);
        condition.setSystemCode(systemCode);
        List<Company> list = companyDAO.selectList(condition);
        if (CollectionUtils.isNotEmpty(list)) {
            result = list.get(0);
        }
        return result;
    }

    @Override
    public int refreshCompanyPsw(String code, String password) {
        Company data = new Company();
        data.setCode(code);
        data.setPassword(MD5Util.md5(password));
        return companyDAO.updatePsw(data);
    }

    /** 
     * @see com.std.user.bo.ICompanyBO#checkLoginName(java.lang.String)
     */
    @Override
    public void checkLoginName(String loginName) {
        Company condition = new Company();
        condition.setLoginName(loginName);
        List<Company> companyList = companyDAO.selectList(condition);
        if (CollectionUtils.isNotEmpty(companyList)) {
            throw new BizException("xn702002", "登录名已存在");
        }
    }

    @Override
    public void updateShelve(Company company, String status, String updater) {
        company.setStatus(status);
        company.setUpdater(updater);
        company.setUpdateDatetime(new Date());
        companyDAO.updateShelve(company);
    }
}
