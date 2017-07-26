package com.std.user.api.impl;

import com.std.user.ao.ISmsOutAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN001200Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 业务biz委托发送短信
 * @author: xieyj 
 * @since: 2017年4月10日 下午9:10:07 
 * @history:
 */
public class XN001200 extends AProcessor {
    private ISmsOutAO smsOutAO = SpringContextHolder.getBean(ISmsOutAO.class);

    private XN001200Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        smsOutAO.sendContent(req.getTokenId(), req.getUserId(),
            req.getContent());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001200Req.class);
        StringValidater.validateBlank(req.getTokenId(), req.getUserId(),
            req.getContent());
    }
}
