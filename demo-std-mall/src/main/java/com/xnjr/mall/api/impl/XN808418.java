package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStockAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808418Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 我的下一个分红权查询
 * @author: myb858 
 * @since: 2017年3月31日 上午10:36:42 
 * @history:
 */
public class XN808418 extends AProcessor {
    private IStockAO stockAO = SpringContextHolder.getBean(IStockAO.class);

    private XN808418Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return stockAO.getMyNextStock(req.getUserId());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808418Req.class);
        StringValidater.validateBlank(req.getUserId());

    }

}
