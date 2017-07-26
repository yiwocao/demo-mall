package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805079Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 代注册用户(城市网)
 * @author: xieyj 
 * @since: 2016年10月18日 下午1:34:21 
 * @history:
 */
public class XN805079 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805079Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        userAO.doAddUser(req.getMobile(), req.getCompanyCode(),
            req.getUserReferee(), req.getSystemCode());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805079Req.class);
        StringValidater.validateBlank(req.getMobile(), req.getCompanyCode(),
            req.getSystemCode());
    }
}
