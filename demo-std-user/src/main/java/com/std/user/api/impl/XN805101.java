package com.std.user.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.user.ao.ISignLogAO;
import com.std.user.api.AProcessor;
import com.std.user.common.DateUtil;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.SignLog;
import com.std.user.dto.req.XN805101Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 分页查询签到记录
 * @author: zuixian 
 * @since: 2016年9月19日 下午1:34:23 
 * @history:
 */
public class XN805101 extends AProcessor {

    private ISignLogAO signLogAO = SpringContextHolder
        .getBean(ISignLogAO.class);

    private XN805101Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        SignLog condition = new SignLog();
        condition.setUserId(req.getUserId());
        condition.setSignDatetimeStart(DateUtil.strToDate(req.getDateStart(),
            DateUtil.DATA_TIME_PATTERN_1));
        condition.setSignDatetimeEnd(DateUtil.strToDate(req.getDateEnd(),
            DateUtil.DATA_TIME_PATTERN_1));
        condition.setSystemCode(req.getSystemCode());
        String column = req.getOrderColumn();
        if (StringUtils.isBlank(column)) {
            column = ISignLogAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(column, req.getOrderDir());
        int start = Integer.valueOf(req.getStart());
        int limit = Integer.valueOf(req.getLimit());
        return signLogAO.querySignLogPage(condition, start, limit);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805101Req.class);
        StringValidater.validateBlank(req.getUserId());
        StringValidater.validateBlank(req.getStart(), req.getLimit());
    }
}
