package com.xnjr.mall.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.IStoreTicketBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.dao.IStoreTicketDAO;
import com.xnjr.mall.domain.StoreTicket;
import com.xnjr.mall.enums.EStoreTicketStatus;
import com.xnjr.mall.exception.BizException;

@Component
public class StoreTicketBOImpl extends PaginableBOImpl<StoreTicket> implements
        IStoreTicketBO {

    @Autowired
    private IStoreTicketDAO storeTicketDAO;

    @Override
    public void saveStoreTicket(StoreTicket data) {
        if (data != null && StringUtils.isNotBlank(data.getCode())) {
            storeTicketDAO.insert(data);
        }
    }

    @Override
    public int removeStoreTicket(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            StoreTicket data = new StoreTicket();
            data.setCode(code);
            count = storeTicketDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshStoreTicket(StoreTicket data) {
        int count = 0;
        if (data != null && StringUtils.isNotBlank(data.getCode())) {
            count = storeTicketDAO.update(data);
        }
        return count;
    }

    @Override
    public int putOnOff(String code, String status) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            StoreTicket data = new StoreTicket();
            data.setCode(code);
            data.setStatus(status);
            count = storeTicketDAO.putOnOff(data);
        }
        return count;
    }

    @Override
    public List<StoreTicket> queryStoreTicketList(StoreTicket condition) {
        return storeTicketDAO.selectList(condition);
    }

    @Override
    public List<StoreTicket> queryWillInValidList() {
        StoreTicket condition = new StoreTicket();
        condition.setStatus("12");
        condition.setValidateEndEnd(new Date());
        return storeTicketDAO.selectList(condition);
    }

    @Override
    public StoreTicket getStoreTicket(String code) {
        StoreTicket data = null;
        if (StringUtils.isNotBlank(code)) {
            StoreTicket condition = new StoreTicket();
            condition.setCode(code);
            data = storeTicketDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "折扣券编号不存在");
            }
        }
        return data;
    }

    /** 
     * @see com.xnjr.mall.bo.IStoreTicketBO#invalid(java.lang.String)
     */
    @Override
    public void invalid(String code) {
        if (StringUtils.isNotBlank(code)) {
            StoreTicket data = new StoreTicket();
            data.setCode(code);
            data.setStatus(EStoreTicketStatus.INVALID.getCode());
            storeTicketDAO.invalid(data);
        }
    }
}
