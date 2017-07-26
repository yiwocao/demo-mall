package com.std.user.api.impl;

import com.std.user.ao.ICompanyCertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806141Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 审核公司资质
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806141 extends AProcessor {
    private ICompanyCertificateAO companyCertificateAO = SpringContextHolder
        .getBean(ICompanyCertificateAO.class);

    private XN806141Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        companyCertificateAO.approveCompanyCertificate(req.getCode(),
            req.getApproveUser(), req.getApproveResult(), req.getApproveNote());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806141Req.class);
        StringValidater.validateBlank(req.getCode(), req.getApproveUser(),
            req.getApproveResult());
    }
}
