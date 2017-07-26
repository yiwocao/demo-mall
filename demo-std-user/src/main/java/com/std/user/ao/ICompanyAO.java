package com.std.user.ao;

import java.util.List;
import java.util.Map;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.Company;

public interface ICompanyAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addCompany(Company data);

    public String addGWCompany(Company data);

    public int dropCompany(String code);

    public int editCompany(Company data);

    // 禁用公司
    public int editCompanyLocation(String code, String updater);

    // 设置默认
    public int editCompanyDefault(String code);

    // 设置热门
    public int editCompanyHot(String code, String isHot, String orderNo,
            String updater);

    // 热门位置上下移
    public int editCompanyHotLocation(String code, String action);

    // 修改公司密码
    public void editCompanyPsw(String code, String oldPassword,
            String newPassword);

    public Paginable<Company> queryCompanyPage(int start, int limit,
            Company condition);

    public List<Company> queryCompanyList(Company condition);

    public Map<String, List<Company>> queryCompanyGroupList(Company condition);

    // 通过省市区来查询公司信息
    public Company getCompanyByPCA(String province, String city, String area,
            String systemCode);

    // 通过公司编号来查询公司信息
    public Company getCompany(String code);

    // 通过用户ID来查询公司信息
    public Company getCompanyByUserId(String userId);

    // 通过域名来查询公司信息
    public Company getCompanyByDomain(String domain, String systemCode);

    // 登录
    public String doLogin(String loginName, String password, String systemCode);

    // 找回密码
    public void doFindLoginPwd(String loginName, String mobile,
            String smsCaptcha, String newPassword, String systemCode);

    // 上下架
    public void updateShelve(String code, String updater);
}
