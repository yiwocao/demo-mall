package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805151Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 微信登录
 * 1、首次登录，输入手机号，短信验证码；
 * 2、之前用户首次登录，输入手机号进行绑定
 * 3、二次登录直接登录
 * @author: xieyj 
 * @since: 2017年4月25日 下午4:40:40 
 * @history:
 */
public class XN805151 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805151Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return userAO.doLoginWeChat(req.getCode(), req.getType(),
            req.getMobile(), req.getSmsCaptcha(), req.getUserReferee(),
            req.getIsRegHx(), req.getCompanyCode(), req.getSystemCode(),req.getIsLoginCaptcha());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805151Req.class);
        StringValidater.validateBlank(req.getCode(),
            req.getSystemCode());
    }
}
