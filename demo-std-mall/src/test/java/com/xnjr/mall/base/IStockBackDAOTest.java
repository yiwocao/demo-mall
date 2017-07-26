package com.xnjr.mall.base;

import java.util.Date;

import org.junit.Test;
import org.unitils.spring.annotation.SpringBeanByType;

import com.xnjr.mall.dao.IStockBackDAO;
import com.xnjr.mall.domain.StockBack;

public class IStockBackDAOTest extends ADAOTest {

    @SpringBeanByType
    private IStockBackDAO stockBackDAO;

    @Test
    public void insert() {

        StockBack data = new StockBack();
        data.setFundCode("fundCode");
        data.setStockCode("stockCode");
        data.setToUser("toUser");
        data.setToAmount(100L);
        data.setToCurrency("toCurrency");
        data.setCreateDatetime(new Date());

        data.setCompanyCode("companyCode");
        data.setSystemCode("systemCode");
        stockBackDAO.insert(data);
        logger.info("insert : {}");
    }

    @Test
    public void select() {
        StockBack condition = new StockBack();
        condition.setFundCode("poolCode");
        StockBack data = stockBackDAO.select(condition);
        logger.info("select : {}", data.getId());
    }

    @Test
    public void selectList() {
        StockBack condition = new StockBack();
        condition.setFundCode("poolCode");
        Long count = stockBackDAO.selectTotalCount(condition);
        logger.info("selectList : {}", count);
    }
}
