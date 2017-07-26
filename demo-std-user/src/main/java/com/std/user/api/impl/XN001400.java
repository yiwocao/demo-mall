package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN001400Req;
import com.std.user.dto.res.XN001400Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 查询用户详情
 * @author: xieyj 
 * @since: 2017年3月6日 上午11:49:24 
 * @history:
 */
public class XN001400 extends AProcessor {

    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN001400Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        XN001400Res user = userAO.doGetDetailUser(req.getUserId());
        return user;
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001400Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getTokenId());
    }
}
