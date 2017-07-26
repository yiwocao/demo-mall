package com.xnjr.mall.dao;

import com.xnjr.mall.dao.base.IBaseDAO;
import com.xnjr.mall.domain.Stock;

public interface IStockDAO extends IBaseDAO<Stock> {
    String NAMESPACE = IStockDAO.class.getName().concat(".");

    int doDailyStock(Stock ele);

    int updateCostAmount(Stock dbStock);

    int updateTOeffectStatus(Stock dbStock);

    int awakenStock(Stock data);

}
