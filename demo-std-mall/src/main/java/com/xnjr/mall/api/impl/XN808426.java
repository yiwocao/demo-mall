package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStockBackAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808426Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 分红权记录详情查询
 * @author: myb858 
 * @since: 2017年3月27日 下午7:39:11 
 * @history:
 */
public class XN808426 extends AProcessor {
    private IStockBackAO stockBackAO = SpringContextHolder
        .getBean(IStockBackAO.class);

    private XN808426Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        return stockBackAO.getStockBack(StringValidater.toLong(req.getId()));
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808426Req.class);
        StringValidater.validateBlank(req.getId());
    }

}
