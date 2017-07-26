package com.std.user.api.impl;

import com.std.user.ao.ICompanyAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806018Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 公司上下架，先适用：城市网
 * @author: xieyj 
 * @since: 2017年5月5日 下午3:18:19 
 * @history:
 */
public class XN806018 extends AProcessor {
    private ICompanyAO companyAO = SpringContextHolder
        .getBean(ICompanyAO.class);

    private XN806018Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        companyAO.updateShelve(req.getCode(), req.getUpdater());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806018Req.class);
        StringValidater.validateBlank(req.getCode(), req.getUpdater());
    }
}
