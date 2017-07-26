package com.xnjr.mall.base;

import java.util.Date;

import org.junit.Test;
import org.unitils.spring.annotation.SpringBeanByType;

import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.dao.IStockDAO;
import com.xnjr.mall.domain.Stock;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.EStockStatus;

public class IStockDAOTest extends ADAOTest {

    @SpringBeanByType
    private IStockDAO stockDAO;

    @Test
    public void insert() {
        Stock data = new Stock();
        String code = OrderNoGenerater.generateM("S");
        data.setCode(code);
        data.setUserId("userId");
        data.setFundCode("fundCode");
        data.setCostAmount(1000L);
        data.setCostCurrency(ECurrency.CNY.getCode());
        data.setBackInterval(5);
        data.setProfitAmount(1000L);
        data.setProfitCurrency(ECurrency.ZH_FRB.getCode());
        data.setBackCount(10);
        data.setBackAmount(1000L);
        data.setTodayAmount(1000L);
        Date date = new Date();
        data.setNextBackDate(date);
        data.setCreateDatetime(date);
        data.setStatus(EStockStatus.WILL_effect.getCode());
        data.setCompanyCode("companyCode");
        data.setSystemCode("systemCode");
        stockDAO.insert(data);
        logger.info("insert : {}");
    }

    @Test
    public void select() {
        Stock condition = new Stock();
        condition.setCode("S201703272228068129");
        Stock data = stockDAO.select(condition);
        logger.info("select : {}", data.getCode());
    }

    @Test
    public void selectList() {
        Stock condition = new Stock();
        condition.setCode("S201703272228068129");
        Long count = stockDAO.selectTotalCount(condition);
        logger.info("selectList : {}", count);
    }

    @Test
    public void doDailyStock() {
        Stock data = new Stock();
        data.setCode("S201703272228068129");
        data.setBackCount(10);
        data.setBackAmount(10000L);
        data.setTodayAmount(10000L);
        data.setNextBackDate(new Date());
        data.setStatus(EStockStatus.DONE.getCode());
        int count = stockDAO.doDailyStock(data);
        logger.info("selectList : {}", count);
    }

}
