package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN001350Req;
import com.std.user.dto.res.XN001350Res;
import com.std.user.enums.EUserKind;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 代注册商家
 * @author: myb858 
 * @since: 2017年3月23日 下午6:10:08 
 * @history:
 */
public class XN001350 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN001350Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new XN001350Res(userAO.doAddUser(req.getLoginName(),
            req.getMobile(), req.getIdKind(), req.getIdNo(), req.getRealName(),
            req.getUserReferee(), req.getUpdater(), req.getRemark(),
            EUserKind.F2.getCode(), req.getPdf(), req.getRoleCode(), 0.0D,
            req.getIsRegHx(), req.getProvince(), req.getCity(), req.getArea(),
            req.getSystemCode()));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001350Req.class);
        StringValidater.validateBlank(req.getMobile(), req.getUpdater(),
            req.getSystemCode());
    }
}
