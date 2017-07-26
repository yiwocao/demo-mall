package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805152Req;
import com.std.user.dto.res.XN805152Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 微信登录，首次不绑定手机号;
 * @author: haiqingzheng 
 * @since: 2016年12月27日 下午5:24:04 
 * @history:
 */
public class XN805152 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805152Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new XN805152Res(userAO.doLoginWeChat(req.getCode(),
            req.getType(), req.getCompanyCode(), req.getSystemCode()));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805152Req.class);
        StringValidater.validateBlank(req.getCode(), req.getCompanyCode(),
            req.getSystemCode());
    }
}
