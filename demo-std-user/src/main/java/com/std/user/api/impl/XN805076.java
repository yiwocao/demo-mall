package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.common.PhoneUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805076Req;
import com.std.user.dto.res.XN805076Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 城市网前端注册接口(登录名CSW+mobile)
 * @author: xieyj 
 * @since: 2017年3月27日 上午10:59:33 
 * @history:
 */
public class XN805076 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805076Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new XN805076Res(userAO.doCSWRegister(req.getMobile(),
            req.getLoginPwd(), req.getLoginPwdStrength(), req.getUserReferee(),
            req.getSmsCaptcha(), req.getIsRegHx(), req.getCompanyCode(),
            req.getSystemCode()));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805076Req.class);
        StringValidater
            .validateBlank(req.getMobile(), req.getLoginPwd(),
                req.getSmsCaptcha(),
                req.getSystemCode());
        PhoneUtil.checkMobile(req.getMobile());// 判断格式
    }
}
