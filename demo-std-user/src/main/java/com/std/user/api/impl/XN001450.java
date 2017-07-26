package com.std.user.api.impl;

import com.std.user.ao.ICompanyAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Company;
import com.std.user.dto.req.XN001450Req;
import com.std.user.dto.res.XN001450Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 公司详情查询
 * @author: xieyj 
 * @since: 2017年3月28日 下午4:49:03 
 * @history:
 */
public class XN001450 extends AProcessor {

    private ICompanyAO companyAO = SpringContextHolder
        .getBean(ICompanyAO.class);

    private XN001450Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Company company = companyAO.getCompany(req.getCompanyCode());
        XN001450Res companyRes = new XN001450Res();
        companyRes.setCode(company.getCode());
        companyRes.setName(company.getName());
        companyRes.setAbbrName(company.getAbbrName());
        companyRes.setProvince(company.getProvince());
        companyRes.setCity(company.getCity());
        companyRes.setArea(company.getArea());
        companyRes.setAddress(company.getAddress());
        return companyRes;
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001450Req.class);
        StringValidater.validateBlank(req.getCompanyCode(), req.getTokenId());
    }
}
