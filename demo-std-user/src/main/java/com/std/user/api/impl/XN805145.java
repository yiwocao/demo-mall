package com.std.user.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.user.ao.IUReadAO;
import com.std.user.api.AProcessor;
import com.std.user.common.DateUtil;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.URead;
import com.std.user.dto.req.XN805145Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 分页查询阅读记录
 * @author: zuixian 
 * @since: 2016年10月11日 下午7:07:11 
 * @history:
 */
public class XN805145 extends AProcessor {
    private IUReadAO uReadAO = SpringContextHolder.getBean(IUReadAO.class);

    private XN805145Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        URead condition = new URead();
        condition.setSmsCode(req.getSmsCode());
        condition.setStatus(req.getStatus());
        condition.setUserId(req.getUserId());
        condition.setReadDatetimeStart(DateUtil.strToDate(req.getDateStart(),
            DateUtil.DATA_TIME_PATTERN_1));
        condition.setReadDatetimeEnd(DateUtil.strToDate(req.getDateEnd(),
            DateUtil.DATA_TIME_PATTERN_1));
        String column = req.getOrderColumn();
        if (StringUtils.isBlank(column)) {
            column = IUReadAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(column, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return uReadAO.queryUReadPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805145Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit());
    }
}
