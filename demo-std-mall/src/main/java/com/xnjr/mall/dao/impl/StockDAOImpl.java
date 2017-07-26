package com.xnjr.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xnjr.mall.dao.IStockDAO;
import com.xnjr.mall.dao.base.support.AMybatisTemplate;
import com.xnjr.mall.domain.Stock;

@Repository("stockDAOImpl")
public class StockDAOImpl extends AMybatisTemplate implements IStockDAO {

    @Override
    public int insert(Stock data) {
        return super.insert(NAMESPACE.concat("insert_stock"), data);
    }

    @Override
    public int delete(Stock data) {
        return 0;
    }

    @Override
    public Stock select(Stock condition) {
        return super.select(NAMESPACE.concat("select_stock"), condition,
            Stock.class);
    }

    @Override
    public Long selectTotalCount(Stock condition) {
        return super.selectTotalCount(NAMESPACE.concat("select_stock_count"),
            condition);
    }

    @Override
    public List<Stock> selectList(Stock condition) {
        return super.selectList(NAMESPACE.concat("select_stock"), condition,
            Stock.class);
    }

    @Override
    public List<Stock> selectList(Stock condition, int start, int count) {
        return super.selectList(NAMESPACE.concat("select_stock"), start, count,
            condition, Stock.class);
    }

    @Override
    public int doDailyStock(Stock data) {
        return super.update(NAMESPACE.concat("update_dailyStock"), data);
    }

    @Override
    public int updateCostAmount(Stock data) {
        return super.update(NAMESPACE.concat("update_costAmount"), data);
    }

    @Override
    public int updateTOeffectStatus(Stock data) {
        return super.update(NAMESPACE.concat("update_TOeffectStatus"), data);
    }

    @Override
    public int awakenStock(Stock data) {
        return super.update(NAMESPACE.concat("update_awakenStock"), data);
    }

}
