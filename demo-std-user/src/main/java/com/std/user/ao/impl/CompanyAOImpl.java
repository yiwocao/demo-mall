package com.std.user.ao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.std.user.ao.ICompanyAO;
import com.std.user.bo.ICNavigateBO;
import com.std.user.bo.ICPasswordBO;
import com.std.user.bo.ICompanyBO;
import com.std.user.bo.ISmsOutBO;
import com.std.user.bo.base.Paginable;
import com.std.user.common.MD5Util;
import com.std.user.domain.Company;
import com.std.user.enums.EBoolean;
import com.std.user.enums.ECompanyStatus;
import com.std.user.enums.EPasswordType;
import com.std.user.enums.ESystemCode;
import com.std.user.enums.EXiaoMi;
import com.std.user.exception.BizException;
import com.std.user.util.PinYin;

@Service
public class CompanyAOImpl implements ICompanyAO {

    @Autowired
    private ICompanyBO companyBO;

    @Autowired
    private ICNavigateBO cNavigateBO;

    @Autowired
    private ISmsOutBO smsOutBO;

    @Autowired
    private ICPasswordBO cPasswordBO;

    @Override
    public String addCompany(Company data) {
        if (StringUtils.isNotBlank(data.getUserId())) {
            checkCompanyUserId(null, data.getUserId());
        }
        if (StringUtils.isNotBlank(data.getLoginName())) {
            companyBO.checkLoginName(data.getLoginName());
        }
        data.setStatus(ECompanyStatus.PUBLIC.getCode());
        if (data.getSystemCode().equals(ESystemCode.CSW.getCode())) {
            data.setStatus(ECompanyStatus.NO_PUBLIC.getCode());
        }
        String code = companyBO.saveCompany(data);
        if (EBoolean.YES.getCode().equals(data.getIsNeedInitPwd())) {
            cPasswordBO.saveCPassword(EPasswordType.company.getCode(),
                EXiaoMi.APPKEY.getCode(), null, EXiaoMi.APPKEY.getValue(),
                code, data.getSystemCode());
            cPasswordBO.saveCPassword(EPasswordType.company.getCode(),
                EXiaoMi.TO.getCode(), null, EXiaoMi.TO.getValue(), code,
                data.getSystemCode());
            cPasswordBO.saveCPassword(EPasswordType.company.getCode(),
                EXiaoMi.TENANTID.getCode(), null, EXiaoMi.TENANTID.getValue(),
                code, data.getSystemCode());
        }
        return code;
    }

    @Override
    @Transactional
    public String addGWCompany(Company data) {
        String code = companyBO.saveCompany(data);
        // addMenu("ind", "首页", code);
        // addMenu("inw", "微信首页", code);
        // addMenu("com", "公司简介", code);
        // addMenu("cin", "我要合作", code);
        // addMenu("wei", "微信顶级菜单", code);
        return code;
    }

    // private void addMenu(String prefix, String name, String companyCode) {
    // String code = null;
    // CNavigate cn = new CNavigate();
    // code = OrderNoGenerater.generate(prefix);
    // cn.setCode(code);
    // cn.setName(name);
    // cn.setType(ECNavigateType.CAIDAN.getCode());
    // cn.setStatus(EBoolean.YES.getCode());
    // cn.setOrderNo(1);
    // cn.setParentCode(EBoolean.NO.getCode());
    // cn.setCompanyCode(companyCode);
    // cNavigateBO.saveCNavigate(cn);
    // }

    @Override
    public int editCompany(Company data) {
        Company company = companyBO.getCompany(data.getCode());
        if (StringUtils.isNotBlank(data.getUserId())) {
            checkCompanyUserId(data.getCode(), data.getUserId());
        }
        return companyBO.refreshCompany(data);
    }

    // 判断用户是否唯一负责一个公司
    private void checkCompanyUserId(String companyCode, String userId) {
        // 判断负责人是否已经存在
        Company condition = new Company();
        condition.setUserId(userId);
        List<Company> companyList = companyBO.queryCompanyList(condition);
        if (CollectionUtils.isNotEmpty(companyList)) {
            if (StringUtils.isBlank(companyCode)) {
                throw new BizException("xn0000", "该负责人已负责其他站点，请选择其他人");
            } else {
                Company data = companyList.get(0);
                if (data.getUserId().equals(userId)
                        && !data.getCode().equals(companyCode)) {
                    throw new BizException("xn0000", "该负责人已负责其他站点，请选择其他人");
                }
            }
        }
    }

    @Override
    public int dropCompany(String code) {
        Company company = companyBO.getCompany(code);
        if (company.getSystemCode().equals(ESystemCode.CSW.getCode())) {
            if (ECompanyStatus.PUBLIC.getCode().equals(company.getStatus())
                    || ECompanyStatus.PUBLICED.getCode().equals(
                        company.getStatus())) {
                throw new BizException("xn0000", "该站点正在使用/已被使用,不能删除");
            }
        }
        return companyBO.removeCompany(code);
    }

    @Override
    public Paginable<Company> queryCompanyPage(int start, int limit,
            Company condition) {
        Paginable<Company> page = null;
        if (null != condition.getCertificateType()) {
            page = companyBO.getPaginableJJ(start, limit, condition);
        } else {
            page = companyBO.getPaginable(start, limit, condition);
        }
        return page;
    }

    @Override
    public List<Company> queryCompanyList(Company condition) {
        List<Company> list = companyBO.queryCompanyList(condition);
        // 将结果按首字母排序
        return sortByFirstLetter(list);
    }

    @Override
    public Map<String, List<Company>> queryCompanyGroupList(Company condition) {
        List<Company> list = companyBO.queryCompanyList(condition);
        return orderName(list);
    }

    /** 
     * @param list
     * @return 
     * @create: 2017年3月6日 下午7:24:04 xieyj
     * @history: 
     */
    private Map<String, List<Company>> orderName(List<Company> list) {
        Map<String, List<Company>> resultMap = new LinkedHashMap<String, List<Company>>();
        char[] alphatableb = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
                'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U',
                'V', 'W', 'X', 'Y', 'Z' };
        for (int i = 0; i < alphatableb.length; i++) {
            List<Company> groupList = new ArrayList<Company>();
            for (Company company : list) {
                if (PinYin.cn2py(company.getName()).charAt(0) == alphatableb[i] + 32) {
                    groupList.add(company);
                }
            }
            if (groupList.size() != 0) {
                resultMap.put(alphatableb[i] + "", groupList);
            }
        }
        return resultMap;
    }

    // 将结果按首字母排序
    private List<Company> sortByFirstLetter(List<Company> list) {
        List<Company> result = new ArrayList<>();
        // 用来记录result的长度
        int i = 0;
        // 用来判断该元素是否已添加
        boolean isAdd = false;
        // 遍历待排序数组
        for (Company company : list) {
            isAdd = false;
            if (i == 0) {
                result.add(company);
                i++;
            } else {
                // 遍历已排序数组
                for (int j = 0; j < i; j++) {
                    // 若待排序元素的首字母小于其元素，则将待排序元素插入到其位置
                    if (PinYin.cn2py(company.getName()).charAt(0) < PinYin
                        .cn2py(result.get(j).getName()).charAt(0)) {
                        result.add(j, company);
                        isAdd = true;
                        i++;
                        break;
                    }
                }
                if (!isAdd) {
                    result.add(company);
                }
            }
        }
        return result;
    }

    @Override
    public Company getCompany(String code) {
        return companyBO.getCompany(code);
    }

    @Override
    public int editCompanyLocation(String code, String updater) {
        int count = 0;
        Company company = companyBO.getCompany(code);
        if (company.getLocation().equals(EBoolean.NO.getCode())) {
            count = companyBO.refreshCompanyLocation(code,
                EBoolean.YES.getCode(), updater);
        } else {
            count = companyBO.refreshCompanyLocation(code,
                EBoolean.NO.getCode(), updater);
        }
        return count;
    }

    @Override
    public int editCompanyDefault(String code) {
        Company company = companyBO.getCompany(code);
        return companyBO.refreshCompanyDefault(code, company.getSystemCode());
    }

    @Override
    public int editCompanyHot(String code, String isHot, String orderNo,
            String updater) {
        if (!companyBO.isCompanyExist(code)) {
            throw new BizException("xn0000", "该编号不存在");
        }
        Company data = companyBO.getCompany(code);
        data.setIsHot(isHot);
        if (StringUtils.isBlank(orderNo)) {
            orderNo = "0";
        }
        data.setOrderNo(Integer.valueOf(orderNo));
        data.setUpdater(updater);
        return companyBO.refreshCompanyHot(data);
    }

    @Override
    public int editCompanyHotLocation(String code, String action) {
        Company data = companyBO.getCompany(code);
        Integer location = data.getOrderNo();
        if (null == location) {
            location = 2;
        }
        if (EBoolean.YES.getCode().equalsIgnoreCase(action)) {
            if (location > 0) {
                location--;
            } else {
                throw new BizException("xn0000", "次序不可小于零");
            }
        } else {
            location++;
        }
        data.setOrderNo(location);
        return companyBO.refreshCompanyHot(data);
    }

    @Override
    public Company getCompanyByUserId(String userId) {
        return companyBO.getCompanyByUserId(userId);
    }

    @Override
    public Company getCompanyByPCA(String province, String city, String area,
            String systemCode) {
        Company condition = new Company();
        condition.setProvinceForQuery(province);
        condition.setCityForQuery(city);
        condition.setAreaForQuery(area);
        condition.setSystemCode(systemCode);
        if (ESystemCode.CSW.getCode().equals(systemCode)) {
            condition.setStatus(ECompanyStatus.PUBLIC.getCode());
        }
        List<Company> list = companyBO.queryCompanyList(condition);
        Company result = new Company();
        if (ESystemCode.CSW.getCode().equals(systemCode)) {
            result = getCompany(list, systemCode);
        } else {
            if (CollectionUtils.sizeIsEmpty(list)) {
                result = companyBO.getDefaultCompany(systemCode);
            } else {
                result = list.get(0);
            }
        }
        return result;
    }

    // 城市网获取城市优先级
    public Company getCompany(List<Company> list, String systemCode) {
        Company result = new Company();
        Integer minOrderNo = 0;
        Map<Integer, Company> map = new HashMap<Integer, Company>();
        if (CollectionUtils.sizeIsEmpty(list)) {
            // 若是没有城市就获取默认城市
            result = companyBO.getDefaultCompany(systemCode);
        } else {
            if (list.size() == 1) {
                // 若是只有一个城市就取第一个
                minOrderNo = list.get(0).getOrderNo();
                map.put(minOrderNo, list.get(0));
            } else {
                // 获取orderNo最小的城市
                minOrderNo = list.get(0).getOrderNo();
                for (Company company : list) {
                    if (minOrderNo >= company.getOrderNo()) {
                        minOrderNo = company.getOrderNo();
                        map.put(minOrderNo, company);
                    }
                }
            }
            result = map.get(minOrderNo);
        }
        return result;
    }

    @Override
    public Company getCompanyByDomain(String domain, String systemCode) {
        if ("".equals(domain) || null == domain) {
            throw new BizException("xn0000", "请输入合法域名");
        }
        Company company = companyBO.getCompanyByDomain(domain, systemCode);
        if (null == company) {
            throw new BizException("xn0000", "域名地址不存在，请检查");
        }
        if (EBoolean.NO.getCode().equals(company.getLocation())) {
            throw new BizException("xn0000", "该商城违规，正等待系统处理，请稍后再试。");
        }
        return company;
    }

    @Override
    public void editCompanyPsw(String code, String oldPassword,
            String newPassword) {
        Company condition = new Company();
        condition.setCode(code);
        condition.setPassword(MD5Util.md5(oldPassword));
        List<Company> list = companyBO.queryCompanyList(condition);
        if (list == null || list.size() == 0) {
            throw new BizException("xn0000", "密码不正确");
        }
        companyBO.refreshCompanyPsw(code, newPassword);
    }

    @Override
    public String doLogin(String loginName, String password, String systemCode) {
        Company condition = new Company();
        condition.setLoginName(loginName);
        List<Company> companyList1 = companyBO.queryCompanyList(condition);
        if (CollectionUtils.isEmpty(companyList1)) {
            throw new BizException("xn702002", "登录名不存在");
        }
        condition.setPassword(MD5Util.md5(password));
        List<Company> companyList2 = companyBO.queryCompanyList(condition);
        if (CollectionUtils.isEmpty(companyList2)) {
            throw new BizException("xn702002", "登录密码错误");
        }
        Company company = companyList2.get(0);
        return company.getCode();
    }

    @Override
    public void doFindLoginPwd(String loginName, String mobile,
            String smsCaptcha, String newPassword, String systemCode) {
        Company company = null;
        Company condition = new Company();
        condition.setLoginName(loginName);
        condition.setSystemCode(systemCode);
        List<Company> companyList = companyBO.queryCompanyList(condition);
        if (CollectionUtils.isEmpty(companyList)) {
            throw new BizException("xn000000", "该登录名不存在");
        } else {
            company = companyList.get(0);
            if (!mobile.equals(company.getMobile())) {
                throw new BizException("xn000000", "该公司无此联系电话");
            }
        }
        // 短信验证码是否正确
        smsOutBO.checkCaptcha(mobile, smsCaptcha, "806009", systemCode);
        companyBO.refreshCompanyPsw(company.getCode(), newPassword);
    }

    @Override
    public void updateShelve(String code, String updater) {
        Company company = companyBO.getCompany(code);
        if (EBoolean.YES.getCode().equals(company.getIsDefault())) {
            throw new BizException("xn000000", "该站点为默认城市,不可以下架");
        }
        String status = null;
        if (company.getStatus().equals(ECompanyStatus.NO_PUBLIC.getCode())
                || company.getStatus()
                    .equals(ECompanyStatus.PUBLICED.getCode())) {
            status = ECompanyStatus.PUBLIC.getCode();
        } else {
            status = ECompanyStatus.PUBLICED.getCode();
        }
        companyBO.updateShelve(company, status, updater);
    }
}
