package com.std.user.api.impl;

import com.std.user.ao.IUserExtAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805073Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 更改用户头像
 * @author: zuixian 
 * @since: 2016年9月19日 下午1:32:41 
 * @history:
 */
public class XN805077 extends AProcessor {

    private IUserExtAO userExtAO = SpringContextHolder
        .getBean(IUserExtAO.class);

    private XN805073Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        userExtAO.editUserExtPhoto(req.getUserId(), req.getPhoto());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805073Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getPhoto());
    }
}
