package com.std.user.api.impl;

import com.std.user.ao.IB2cSmsAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805121Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 消息删除
 * @author: xieyj 
 * @since: 2016年10月13日 下午7:17:10 
 * @history:
 */
public class XN805121 extends AProcessor {

    private IB2cSmsAO b2cSmsAO = SpringContextHolder.getBean(IB2cSmsAO.class);

    private XN805121Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        b2cSmsAO.dropB2cSms(req.getCode());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805121Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
