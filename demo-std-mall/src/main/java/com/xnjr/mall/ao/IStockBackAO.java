package com.xnjr.mall.ao;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.StockBack;

public interface IStockBackAO {
    static final String DEFAULT_ORDER_COLUMN = "id";

    public Paginable<StockBack> queryStockBackPage(int start, int limit,
            StockBack condition);

    public StockBack getStockBack(Long id);

}
