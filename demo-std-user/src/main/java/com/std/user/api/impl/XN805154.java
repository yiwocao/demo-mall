package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.common.PhoneUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805154Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 注册送积分,现在适用：菜狗
 * @author: xieyj 
 * @since: 2016年12月9日 上午8:37:39 
 * @history:
 */
public class XN805154 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805154Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return userAO.doRegisterAddJf(req.getMobile(), req.getLoginPwd(),
            req.getLoginPwdStrength(), req.getUserReferee(),
            req.getSmsCaptcha(), req.getIsRegHx(), req.getProvince(),
            req.getCity(), req.getArea(), req.getSystemCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805154Req.class);
        StringValidater
            .validateBlank(req.getMobile(), req.getLoginPwd(),
                req.getLoginPwdStrength(), req.getSmsCaptcha(),
                req.getSystemCode());
        PhoneUtil.checkMobile(req.getMobile());// 判断格式
    }
}
