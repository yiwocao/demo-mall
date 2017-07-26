package com.std.user.api.impl;

import com.std.user.ao.IUReadAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805141Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 前端删除阅读记录（前端不显示该条记录）
 * @author: zuixian 
 * @since: 2016年10月14日 上午10:19:50 
 * @history:
 */
public class XN805141 extends AProcessor {
    private IUReadAO uReadAO = SpringContextHolder.getBean(IUReadAO.class);

    private XN805141Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        int id = StringValidater.toInteger(req.getId());
        int count = uReadAO.dropUReadOnFront(id);
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805141Req.class);
        StringValidater.validateBlank(req.getId());
    }
}
