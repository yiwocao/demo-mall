package com.std.user.api.impl;

import com.std.user.ao.ICIntentionAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806072Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 详情查询合作意向
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806072 extends AProcessor {
    private ICIntentionAO cIntentionAO = SpringContextHolder
        .getBean(ICIntentionAO.class);

    private XN806072Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return cIntentionAO.getCIntention(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806072Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
