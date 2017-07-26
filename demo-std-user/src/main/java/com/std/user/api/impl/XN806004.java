package com.std.user.api.impl;

import com.std.user.ao.ICompanyAO;
import com.std.user.api.AProcessor;
import com.std.user.api.converter.CompanyConverter;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Company;
import com.std.user.dto.req.XN806004Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 修改公司信息
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806004 extends AProcessor {
    private ICompanyAO companyAO = SpringContextHolder
        .getBean(ICompanyAO.class);

    private XN806004Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Company data = CompanyConverter.converter(req);
        int count = companyAO.editCompany(data);
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806004Req.class);
        StringValidater.validateBlank(req.getCode(), req.getType(),
            req.getName());
        // req.getProvince(), req.getCity(), req.getArea(), req.getDescription()
    }
}
