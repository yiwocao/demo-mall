package com.std.user.api.impl;

import com.std.user.ao.IInvitationAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Invitation;
import com.std.user.dto.req.XN805341Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 邀请码使用
 * @author: shan 
 * @since: 2016年12月17日 下午8:04:20 
 * @history:
 */
public class XN805341 extends AProcessor {
    private IInvitationAO invitationAO = SpringContextHolder
        .getBean(IInvitationAO.class);

    private XN805341Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Invitation data = new Invitation();
        data.setInvCode(req.getInvCode());
        data.setUserId(req.getUserId());
        invitationAO.editInvitation(data);
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805341Req.class);
        StringValidater.validateBlank(req.getInvCode(), req.getUserId());
    }
}
