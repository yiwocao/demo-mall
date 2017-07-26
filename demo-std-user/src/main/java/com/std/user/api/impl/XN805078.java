package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805078Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * admin管理员重置密码
 * @author: xieyj 
 * @since: 2016年10月18日 下午1:34:21 
 * @history:
 */
public class XN805078 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805078Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        userAO.doFindLoginPwdByOss(req.getUserId(), req.getAdminUserId(),
            req.getAdminPwd());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805078Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getAdminUserId(),
            req.getAdminPwd(), req.getSystemCode());
    }
}
