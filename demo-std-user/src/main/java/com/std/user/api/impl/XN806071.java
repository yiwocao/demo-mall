package com.std.user.api.impl;

import com.std.user.ao.ICIntentionAO;
import com.std.user.api.AProcessor;
import com.std.user.api.converter.CIntentionConverter;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CIntention;
import com.std.user.dto.req.XN806071Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 列表查询合作意向
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806071 extends AProcessor {
    private ICIntentionAO cIntentionAO = SpringContextHolder
        .getBean(ICIntentionAO.class);

    private XN806071Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CIntention condition = CIntentionConverter.converter(req);
        return cIntentionAO.queryCIntentionList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806071Req.class);
        StringValidater.validateBlank(req.getSystemCode());
    }
}
