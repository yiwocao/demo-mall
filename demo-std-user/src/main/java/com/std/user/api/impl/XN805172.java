package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805172Req;
import com.std.user.dto.res.XN805172Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 代注册,并分配角色
 * @author: xieyj 
 * @since: 2017年3月12日 下午8:21:24 
 * @history:
 */
public class XN805172 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805172Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new XN805172Res(userAO.doAddUser(req.getLoginName(),
            req.getKind(), req.getRoleCode(), req.getUpdater(),
            req.getSystemCode()));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805172Req.class);
        StringValidater.validateBlank(req.getLoginName(), req.getKind(),
            req.getRoleCode(), req.getUpdater(), req.getSystemCode());
    }
}
