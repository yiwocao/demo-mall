package com.std.user.api.impl;

import com.std.user.ao.ICIntentionAO;
import com.std.user.api.AProcessor;
import com.std.user.api.converter.CIntentionConverter;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CIntention;
import com.std.user.dto.req.XN806061Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 更改合作意向状态
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806061 extends AProcessor {
    private ICIntentionAO cIntentionAO = SpringContextHolder
        .getBean(ICIntentionAO.class);

    private XN806061Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CIntention data = CIntentionConverter.converter(req);
        int count = cIntentionAO.editCIntention(data);
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806061Req.class);
        StringValidater.validateBlank(req.getCode(), req.getStatus(),
            req.getUpdater());
    }
}
