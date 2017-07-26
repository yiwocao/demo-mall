package com.std.user.api.impl;

import com.std.user.ao.ICompanyCertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CompanyCertificate;
import com.std.user.dto.req.XN806143Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 修改公司资质
 * @author: xieyj 
 * @since: 2016年11月7日 下午4:16:57 
 * @history:
 */
public class XN806143 extends AProcessor {
    private ICompanyCertificateAO companyCertificateAO = SpringContextHolder
        .getBean(ICompanyCertificateAO.class);

    private XN806143Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CompanyCertificate data = new CompanyCertificate();
        data.setCode(req.getCode());
        data.setCertificateCode(req.getCertificateCode());
        data.setApplyUser(req.getApplyUser());
        companyCertificateAO.editCompanyCertificate(data);
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806143Req.class);
        StringValidater.validateBlank(req.getCode(), req.getCertificateCode(),
            req.getApplyUser());
    }
}
