package com.std.user.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.user.ao.IInvitationAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Invitation;
import com.std.user.dto.req.XN805345Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 
 * @author: shan 
 * @since: 2016年12月19日 上午11:14:16 
 * @history:
 */
public class XN805345 extends AProcessor {
    private IInvitationAO invitationAO = SpringContextHolder
        .getBean(IInvitationAO.class);

    private XN805345Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Invitation condition = new Invitation();
        condition.setStatus(req.getStatus());
        condition.setInvCode(req.getInvCode());
        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IInvitationAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return invitationAO.queryInvitationPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805345Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit());
    }

}
