package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805150Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 修改用户名
 * @author: xieyj 
 * @since: 2016年10月22日 下午12:08:03 
 * @history:
 */
public class XN805150 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805150Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        userAO.editLoginName(req.getUserId(), req.getLoginName());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805150Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getLoginName());
        StringValidater.validateEmoji(req.getLoginName());
    }
}
