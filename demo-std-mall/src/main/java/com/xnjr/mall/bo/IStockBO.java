package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.Stock;

public interface IStockBO extends IPaginableBO<Stock> {
    public void generateCStock(Long frAmount, String buyUser);

    public void generateBStock(Long frAmount, String storeOwner);

    public Stock getStock(String code);

    public List<Stock> queryStockList(Stock condition);

    // 获取我的非“等待生效”的分红权
    public List<Stock> queryMyStockList(String userId);

    // 获取“生效中”的分红权
    public List<Stock> queryIngStockList(String userId);

    public int doDailyStock(Stock ele);

    // 获取“"等待生效"”的分红权
    public Stock getMyNextStock(String userId);

    // 唤醒分红权：把“可以生效待生效”的分红权，变成“生效中”状态
    public void awakenStock(String userId);

}
