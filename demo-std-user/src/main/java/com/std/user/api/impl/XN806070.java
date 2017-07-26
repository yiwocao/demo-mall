package com.std.user.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.user.ao.ICIntentionAO;
import com.std.user.ao.ICMaterialAO;
import com.std.user.api.AProcessor;
import com.std.user.api.converter.CIntentionConverter;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CIntention;
import com.std.user.dto.req.XN806070Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 分页查询合作意向
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806070 extends AProcessor {
    private ICIntentionAO cIntentionAO = SpringContextHolder
        .getBean(ICIntentionAO.class);

    private XN806070Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CIntention condition = CIntentionConverter.converter(req);
        String column = req.getOrderColumn();
        if (StringUtils.isBlank(column)) {
            column = ICMaterialAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(column, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return cIntentionAO.queryCIntentionPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806070Req.class);
        StringValidater.validateNumber(req.getStart(), req.getLimit());
        StringValidater.validateBlank(req.getSystemCode());
    }
}
