package com.std.user.api.impl;

import com.std.user.ao.ISignLogAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.dto.req.XN805102Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 列表查询签到记录
 * @author: zuixian 
 * @since: 2016年9月19日 下午1:34:48 
 * @history:
 */
public class XN805102 extends AProcessor {

    private ISignLogAO signLogAO = SpringContextHolder
        .getBean(ISignLogAO.class);

    private XN805102Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return signLogAO.querySignLogList(req.getUserId(), req.getDateStart(),
            req.getDateEnd());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805102Req.class);
    }

}
