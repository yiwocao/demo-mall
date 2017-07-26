package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805155Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 登录送积分(菜狗)
 * @author: xieyj 
 * @since: 2016年12月9日 上午9:24:21 
 * @history:
 */
public class XN805155 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805155Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return userAO.doLoginAddJf(req.getLoginName(), req.getLoginPwd(),
            req.getKind(), req.getCompanyCode(), req.getSystemCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805155Req.class);
        StringValidater.validateBlank(req.getLoginName(), req.getLoginPwd(),
            req.getKind(), req.getCompanyCode(), req.getSystemCode());
    }
}
