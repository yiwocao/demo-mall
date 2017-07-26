package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Stock;
import com.xnjr.mall.dto.res.XN808419Res;
import com.xnjr.mall.dto.res.XN808420Res;

public interface IStockAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public Paginable<Stock> queryStockPage(int start, int limit, Stock condition);

    public List<Stock> queryMyStockList(String userId);

    public Stock getMyNextStock(String userId);

    public XN808419Res getMyTodayStocks(String userId);

    public Stock getStock(String code);

    public XN808420Res getStaticStockNum();

    /**
     * 每日结算
     *  
     * @create: 2017年3月27日 下午7:55:27 myb858
     * @history:
     */
    public void doDailyStock();

}
