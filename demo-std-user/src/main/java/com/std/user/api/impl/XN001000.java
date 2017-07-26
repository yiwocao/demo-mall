package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN001000Req;
import com.std.user.dto.res.XN001000Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 拿tokenId的一步，在登录阶段调用
 * @author: myb858 
 * @since: 2015年10月28日 上午10:31:58 
 * @history:
 */
public class XN001000 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN001000Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        String userId = userAO.doLogin(req.getLoginName(), req.getLoginPwd(),
            null, null, req.getSystemCode());
        XN001000Res res = new XN001000Res();
        res.setTokenId(userId);
        res.setUserId(userId);
        return res;
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001000Req.class);
        StringValidater.validateBlank(req.getLoginName(), req.getLoginPwd(),
            req.getSystemCode());
    }
}
