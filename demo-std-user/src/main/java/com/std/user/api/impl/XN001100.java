package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN001100Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 校验支付密码正确与否
 * @author: myb858 
 * @since: 2015年11月1日 下午3:45:58 
 * @history:
 */
public class XN001100 extends AProcessor {

    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN001100Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        userAO.doCheckTradePwd(req.getUserId(), req.getTradePwd());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001100Req.class);
        StringValidater.validateBlank(req.getTokenId(), req.getUserId(),
            req.getTradePwd());
    }

}
