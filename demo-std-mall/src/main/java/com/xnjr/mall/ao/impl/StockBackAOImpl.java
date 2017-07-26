package com.xnjr.mall.ao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xnjr.mall.ao.IStockBackAO;
import com.xnjr.mall.bo.IStockBackBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.StockBack;

@Service
public class StockBackAOImpl implements IStockBackAO {

    @Autowired
    private IStockBackBO stockBackBO;

    @Override
    public Paginable<StockBack> queryStockBackPage(int start, int limit,
            StockBack condition) {
        return stockBackBO.getPaginable(start, limit, condition);
    }

    @Override
    public StockBack getStockBack(Long id) {
        return stockBackBO.getStockBack(id);
    }
}
