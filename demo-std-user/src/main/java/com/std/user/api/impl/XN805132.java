package com.std.user.api.impl;

import com.std.user.ao.IB2cSmsAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.dto.req.XN805132Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 详情查询消息
 * @author: xieyj 
 * @since: 2016年10月13日 下午7:35:12 
 * @history:
 */
public class XN805132 extends AProcessor {
    private IB2cSmsAO b2cSmsAO = SpringContextHolder.getBean(IB2cSmsAO.class);

    private XN805132Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return b2cSmsAO.getB2cSms(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805132Req.class);
    }
}
