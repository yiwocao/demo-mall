package com.std.user.api.impl;

import com.std.user.ao.ICompanyAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806009Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 找回公司密码
 * @author: xieyj 
 * @since: 2016年11月3日 下午6:16:46 
 * @history:
 */
public class XN806009 extends AProcessor {
    private ICompanyAO companyAO = SpringContextHolder
        .getBean(ICompanyAO.class);

    private XN806009Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        companyAO.doFindLoginPwd(req.getLoginName(), req.getMobile(),
            req.getSmsCaptcha(), req.getNewPassword(), req.getSystemCode());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806009Req.class);
        StringValidater.validateBlank(req.getLoginName(), req.getMobile(),
            req.getSmsCaptcha(), req.getNewPassword(), req.getSystemCode());
    }
}
