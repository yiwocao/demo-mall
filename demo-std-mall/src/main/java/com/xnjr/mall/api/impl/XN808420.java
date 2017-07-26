package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStockAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * oss统计查询消费者和店家分红权个数
 * @author: myb858 
 * @since: 2017年3月31日 上午10:38:15 
 * @history:
 */
public class XN808420 extends AProcessor {
    private IStockAO stockAO = SpringContextHolder.getBean(IStockAO.class);

    @Override
    public Object doBusiness() throws BizException {
        return stockAO.getStaticStockNum();
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {

    }

}
