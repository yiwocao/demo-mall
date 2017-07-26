package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805170Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 验证同一商铺手机号是否注册
 * @author: xieyj 
 * @since: 2016年11月22日 下午2:40:16 
 * @history:
 */
public class XN805170 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805170Req req = null;

    /** 
     * @see com.xnjr.cpzc.service.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        userAO.doCheckMobile(req.getMobile(), req.getKind(),
            req.getCompanyCode(), req.getSystemCode());
        return new BooleanRes(true);
    }

    /** 
     * @see com.xnjr.cpzc.service.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805170Req.class);
        StringValidater.validateBlank(req.getMobile(), req.getKind(),
            req.getCompanyCode(), req.getSystemCode());
    }
}
