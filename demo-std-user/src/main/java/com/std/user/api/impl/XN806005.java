package com.std.user.api.impl;

import com.std.user.ao.ICompanyAO;
import com.std.user.api.AProcessor;
import com.std.user.api.converter.CompanyConverter;
import com.std.user.common.JsonUtil;
import com.std.user.common.PhoneUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Company;
import com.std.user.dto.req.XN806005Req;
import com.std.user.dto.res.PKCodeRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 新增官网公司
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806005 extends AProcessor {
    private ICompanyAO companyAO = SpringContextHolder
        .getBean(ICompanyAO.class);

    private XN806005Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Company data = CompanyConverter.converter(req);
        String code = companyAO.addGWCompany(data);
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806005Req.class);
        StringValidater.validateBlank(req.getType(), req.getName(),
            req.getProvince(), req.getCity(), req.getArea(), req.getAddress(),
            req.getDescription(), req.getUpdater(), req.getSystemCode());
        PhoneUtil.checkMobile(req.getMobile());
    }
}
