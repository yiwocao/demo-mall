package com.std.user.api.impl;

import com.std.user.ao.IInvitationAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805342Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 邀请码作废
 * @author: shan 
 * @since: 2016年12月19日 上午11:03:34 
 * @history:
 */
public class XN805342 extends AProcessor {
    private IInvitationAO invitationAO = SpringContextHolder
        .getBean(IInvitationAO.class);

    private XN805342Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        invitationAO.editInvitation(req.getCode());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805342Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
