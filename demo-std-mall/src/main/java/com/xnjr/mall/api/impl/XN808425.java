/**
 * @Title XN808407.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月19日 下午8:59:45 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.IStockBackAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.StockBack;
import com.xnjr.mall.dto.req.XN808425Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 分红权记录分页查询
 * @author: myb858 
 * @since: 2017年3月27日 下午7:38:55 
 * @history:
 */
public class XN808425 extends AProcessor {
    private IStockBackAO stockBackAO = SpringContextHolder
        .getBean(IStockBackAO.class);

    private XN808425Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        StockBack condition = new StockBack();
        condition.setFundCode(req.getFundCode());
        condition.setStockCode(req.getStockCode());
        condition.setToUser(req.getToUser());
        condition.setSystemCode(req.getSystemCode());
        condition.setCompanyCode(req.getCompanyCode());

        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IStockBackAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return stockBackAO.queryStockBackPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808425Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit(),
            req.getSystemCode(), req.getCompanyCode());
    }

}
