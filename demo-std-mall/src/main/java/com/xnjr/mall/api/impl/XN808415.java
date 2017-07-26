/**
 * @Title XN808401.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月19日 下午5:15:26 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.IStockAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Stock;
import com.xnjr.mall.dto.req.XN808415Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 分页查询分红权
 * @author: myb858 
 * @since: 2017年3月27日 下午7:38:36 
 * @history:
 */
public class XN808415 extends AProcessor {
    private IStockAO stockAO = SpringContextHolder.getBean(IStockAO.class);

    private XN808415Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Stock condition = new Stock();
        condition.setUserId(req.getUserId());
        condition.setFundCode(req.getFundCode());
        condition.setStatus(req.getStatus());
        condition.setSystemCode(req.getSystemCode());
        condition.setCompanyCode(req.getCompanyCode());

        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IStockAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return stockAO.queryStockPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808415Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit(),
            req.getCompanyCode(), req.getSystemCode());
    }
}
