package com.std.user.api.impl;

import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805063Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;

/**
 * @author: xieyj 
 * @since: 2016年12月27日 下午9:01:50 
 * @history:
 */
public class XN805063 extends AProcessor {
    private XN805063Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return null;
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805063Req.class);
        StringValidater.validateBlank(req.getUserId());
    }
}
