package com.xnjr.mall.bo;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.Stock;
import com.xnjr.mall.domain.StockBack;

public interface IStockBackBO extends IPaginableBO<StockBack> {
    public Long saveStockBack(Stock stock);

    public StockBack getStockBack(Long id);

}
