package com.std.user.api.impl;

import com.std.user.ao.IInvitationAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805347Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 邀请码详情查询
 * @author: shan 
 * @since: 2016年12月19日 上午11:25:38 
 * @history:
 */
public class XN805347 extends AProcessor {
    private IInvitationAO invitationAO = SpringContextHolder
        .getBean(IInvitationAO.class);

    private XN805347Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return invitationAO.getInvitation(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805347Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
