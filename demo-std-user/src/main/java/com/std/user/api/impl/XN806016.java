package com.std.user.api.impl;

import com.std.user.ao.ICompanyAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806016Req;
import com.std.user.dto.res.XN806016Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 服务方登录
 * @author: xieyj 
 * @since: 2016年11月3日 下午5:45:07 
 * @history:
 */
public class XN806016 extends AProcessor {
    private ICompanyAO companyAO = SpringContextHolder
        .getBean(ICompanyAO.class);

    private XN806016Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new XN806016Res(companyAO.doLogin(req.getLoginName(),
            req.getPassword(), req.getSystemCode()));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806016Req.class);
        StringValidater.validateBlank(req.getLoginName(), req.getPassword(),
            req.getSystemCode());
    }
}
