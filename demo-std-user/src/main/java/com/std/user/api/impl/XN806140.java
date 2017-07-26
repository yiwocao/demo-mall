package com.std.user.api.impl;

import com.std.user.ao.ICompanyCertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806140Req;
import com.std.user.dto.res.PKCodeRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 申请公司资质
 * @author: xieyj 
 * @since: 2016年11月10日 上午11:58:22 
 * @history:
 */
public class XN806140 extends AProcessor {
    private ICompanyCertificateAO companyCertificateAO = SpringContextHolder
        .getBean(ICompanyCertificateAO.class);

    private XN806140Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        String code = companyCertificateAO.applyCompanyCertificate(
            req.getCompanyCode(), req.getCertificateCode(), req.getApplyUser());
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806140Req.class);
        StringValidater.validateBlank(req.getCertificateCode(),
            req.getCompanyCode());
    }
}
