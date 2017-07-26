package com.std.user.api.impl;

import com.std.user.ao.IInvitationAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.domain.Invitation;
import com.std.user.dto.req.XN805346Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 邀请码列表查询
 * @author: shan 
 * @since: 2016年12月19日 上午11:37:30 
 * @history:
 */
public class XN805346 extends AProcessor {
    private IInvitationAO invitationAO = SpringContextHolder
        .getBean(IInvitationAO.class);

    private XN805346Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Invitation condition = new Invitation();
        condition.setInvCode(req.getInvCode());
        condition.setUserId(req.getUserId());
        condition.setStatus(req.getStatus());
        return invitationAO.queryInvitationList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805346Req.class);
    }

}
