package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN001102Req;
import com.std.user.dto.res.XN001102Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 校验手机号存在与否
 * @author: xieyj 
 * @since: 2016年10月17日 下午7:23:10 
 * @history:
 */
public class XN001102 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN001102Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        String userId = userAO.doGetUserIdByCondition(req.getMobile(),
            req.getKind(), req.getCompanyCode(), req.getSystemCode());
        return new XN001102Res(userId);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001102Req.class);
        StringValidater.validateBlank(req.getMobile(), req.getKind(),
            req.getSystemCode());
    }
}
