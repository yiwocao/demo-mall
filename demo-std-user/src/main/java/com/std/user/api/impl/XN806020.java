package com.std.user.api.impl;

import com.std.user.ao.ICPasswordAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806020Req;
import com.std.user.dto.res.PKCodeRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 新增密码记录
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806020 extends AProcessor {
    private ICPasswordAO cPasswordAO = SpringContextHolder
        .getBean(ICPasswordAO.class);

    private XN806020Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        String code = cPasswordAO.addCPassword(req.getType(), req.getAccount(),
            req.getPassword(), req.getRemark(), req.getCompanyCode(),
            req.getSystemCode());
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806020Req.class);
        StringValidater.validateBlank(req.getType(), req.getAccount(),
            req.getPassword(), req.getCompanyCode(), req.getSystemCode());
    }
}
