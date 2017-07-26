package com.std.user.api.impl;

import com.std.user.ao.ICompanyCertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806142Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 删除公司资质
 * @author: xieyj 
 * @since: 2016年11月7日 下午4:12:45 
 * @history:
 */
public class XN806142 extends AProcessor {
    private ICompanyCertificateAO companyCertificateAO = SpringContextHolder
        .getBean(ICompanyCertificateAO.class);

    private XN806142Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        companyCertificateAO.dropCompanyCertificate(req.getCode());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806142Req.class);
        StringValidater.validateBlank(req.getCode(), req.getUserId());
    }
}
