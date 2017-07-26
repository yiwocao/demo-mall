package com.xnjr.mall.base;

import java.util.Date;

import org.junit.Test;
import org.unitils.spring.annotation.SpringBeanByType;

import com.xnjr.mall.dao.ICaigopoolDAO;
import com.xnjr.mall.domain.Caigopool;

public class ICaigopoolDAOTest extends ADAOTest {

    @SpringBeanByType
    private ICaigopoolDAO stockPoolDAO;

    @Test
    public void insert() {
        Caigopool data = new Caigopool();
        data.setCode("stock001");
        data.setName("stockName");
        data.setType("type");
        data.setAmount(1000L);
        data.setUsedAmount(2000L);
        data.setAddUser("addUser");
        data.setAddDatetime(new Date());
        data.setRemark("remark");
        data.setCompanyCode("companyCode");
        data.setSystemCode("systemCode");
        stockPoolDAO.insert(data);
        logger.info("insert : {}");
    }

    @Test
    public void select() {
        Caigopool condition = new Caigopool();
        condition.setCode("stock001");
        Caigopool data = stockPoolDAO.select(condition);
        logger.info("select : {}", data);
    }

    @Test
    public void selectList() {
        Caigopool condition = new Caigopool();
        condition.setCode("stock001");
        Long count = stockPoolDAO.selectTotalCount(condition);
        logger.info("selectList : {}", count);
    }

}
