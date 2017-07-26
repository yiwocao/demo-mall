package com.std.user.api.impl;

import com.std.user.ao.ICPasswordAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806032Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 详情查询密码记录
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806032 extends AProcessor {
    private ICPasswordAO cPasswordAO = SpringContextHolder
        .getBean(ICPasswordAO.class);

    private XN806032Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return cPasswordAO.getCPassword(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806032Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
