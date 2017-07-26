package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805182Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 修改用户信息，使用对象：定制通
 * @author: xieyj 
 * @since: 2017年4月18日 上午11:21:51 
 * @history:
 */
public class XN805182 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805182Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        userAO.doEditUser(req);
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805182Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getUpdater());
    }
}
