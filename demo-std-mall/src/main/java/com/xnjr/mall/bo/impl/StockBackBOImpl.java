package com.xnjr.mall.bo.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.IStockBackBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.dao.IStockBackDAO;
import com.xnjr.mall.domain.Stock;
import com.xnjr.mall.domain.StockBack;
import com.xnjr.mall.exception.BizException;

@Component
public class StockBackBOImpl extends PaginableBOImpl<StockBack> implements
        IStockBackBO {

    @Autowired
    private IStockBackDAO stockBackDAO;

    @Override
    public Long saveStockBack(Stock stock) {
        StockBack data = new StockBack();
        data.setFundCode(stock.getFundCode());
        data.setStockCode(stock.getCode());
        data.setToUser(stock.getUserId());
        data.setToAmount(stock.getTodayAmount());
        data.setToCurrency(stock.getProfitCurrency());
        data.setCreateDatetime(new Date());
        data.setSystemCode(stock.getSystemCode());
        data.setCompanyCode(stock.getCompanyCode());
        stockBackDAO.insert(data);
        return data.getId();
    }

    @Override
    public StockBack getStockBack(Long id) {
        StockBack data = null;
        if (id != null) {
            StockBack condition = new StockBack();
            condition.setId(id);
            data = stockBackDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "记录不存在");
            }
        }
        return data;
    }
}
