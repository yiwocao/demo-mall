package com.std.user.api.impl;

import com.std.user.ao.ICNavigateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CNavigate;
import com.std.user.dto.req.XN806051Req;
import com.std.user.enums.EBoolean;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 前端查询导航
 * @author: xieyj 
 * @since: 2016年10月25日 下午4:51:09 
 * @history:
 */
public class XN806051 extends AProcessor {
    private ICNavigateAO cNavigateAO = SpringContextHolder
        .getBean(ICNavigateAO.class);

    private XN806051Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CNavigate condition = new CNavigate();
        condition.setType(req.getType());
        condition.setParentCode(req.getParentCode());
        condition.setLocation(req.getLocation());
        condition.setCompanyCode(req.getCompanyCode());
        condition.setStatus(EBoolean.YES.getCode());
        condition.setIsFront(EBoolean.YES.getCode());
        condition.setSystemCode(req.getSystemCode());
        return cNavigateAO.queryCNavigateList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806051Req.class);
        StringValidater
            .validateBlank(req.getCompanyCode(), req.getSystemCode());
    }
}
