package com.std.user.api.impl;

import com.std.user.ao.ICompanyAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806006Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 公司热门设置
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806006 extends AProcessor {
    private ICompanyAO companyAO = SpringContextHolder
        .getBean(ICompanyAO.class);

    private XN806006Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        companyAO.editCompanyHot(req.getCode(), req.getIsHot(),
            req.getOrderNo(), req.getUpdater());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806006Req.class);
        StringValidater.validateBlank(req.getCode(), req.getIsHot(),
            req.getUpdater());
    }
}
