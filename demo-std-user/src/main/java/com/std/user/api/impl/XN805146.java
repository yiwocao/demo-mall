package com.std.user.api.impl;

import com.std.user.ao.IUReadAO;
import com.std.user.api.AProcessor;
import com.std.user.common.DateUtil;
import com.std.user.common.JsonUtil;
import com.std.user.domain.URead;
import com.std.user.dto.req.XN805146Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 分页查询阅读记录
 * @author: zuixian 
 * @since: 2016年10月11日 下午7:07:11 
 * @history:
 */
public class XN805146 extends AProcessor {
    private IUReadAO uReadAO = SpringContextHolder.getBean(IUReadAO.class);

    private XN805146Req req = null;

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
        return uReadAO.queryUReadList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805146Req.class);
    }
}
