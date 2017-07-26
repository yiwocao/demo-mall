package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805200Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 替换所属公司（城市网）
 * @author: xieyj 
 * @since: 2017年3月1日 下午5:08:17 
 * @history:
 */
public class XN805200 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805200Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        userAO.doChangeCompany(req.getUserId(), req.getCompanyCode());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805200Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getCompanyCode());

    }
}
