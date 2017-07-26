package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN001404Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 统计用户数
 * @author: asus 
 * @since: 2017年5月16日 下午5:43:33 
 * @history:
 */
public class XN001404 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN001404Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return userAO.totalUser(req.getBeginDatetime(), req.getEndDatetime(),
            req.getCompanyCode(), req.getSystemCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001404Req.class);
        StringValidater
            .validateBlank(req.getSystemCode(), req.getCompanyCode());
    }

}
