package com.std.user.api.impl;

import com.std.user.ao.ICompanyAO;
import com.std.user.api.AProcessor;
import com.std.user.api.converter.CompanyConverter;
import com.std.user.common.JsonUtil;
import com.std.user.domain.Company;
import com.std.user.dto.req.XN806017Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

public class XN806017 extends AProcessor {
    private ICompanyAO companyAO = SpringContextHolder
        .getBean(ICompanyAO.class);

    private XN806017Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Company condition = CompanyConverter.converter(req);
        return companyAO.queryCompanyGroupList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806017Req.class);
    }
}
