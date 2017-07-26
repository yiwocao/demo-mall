package com.std.user.api.impl;

import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN807910Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;
import com.std.user.third.wechat.impl.WechatTokenUtil;

/**
 * 获取微信JS-SDK使用权限签名等信息
 * @author: xieyj 
 * @since: 2017年3月29日 下午7:57:16 
 * @history:
 */
public class XN807910 extends AProcessor {
    private WechatTokenUtil wechatTokenUtil = SpringContextHolder
        .getBean(WechatTokenUtil.class);

    private XN807910Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return wechatTokenUtil.getSign(req.getSystemCode(),
            req.getCompanyCode(), req.getUrl());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN807910Req.class);
        StringValidater
            .validateBlank(req.getSystemCode(), req.getCompanyCode());
    }
}
