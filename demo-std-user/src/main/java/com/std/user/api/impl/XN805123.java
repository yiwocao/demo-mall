package com.std.user.api.impl;

import com.std.user.ao.IB2cSmsAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805123Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 消息发布
 * @author: xieyj 
 * @since: 2016年10月13日 下午7:17:10 
 * @history:
 */
public class XN805123 extends AProcessor {

    private IB2cSmsAO b2cSmsAO = SpringContextHolder.getBean(IB2cSmsAO.class);

    private XN805123Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        b2cSmsAO.publishB2cSms(req.getCode(), req.getUpdater());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805123Req.class);
        StringValidater.validateBlank(req.getCode(), req.getUpdater());
    }
}
