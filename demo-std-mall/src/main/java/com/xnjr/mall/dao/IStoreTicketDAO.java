package com.xnjr.mall.dao;

import com.xnjr.mall.dao.base.IBaseDAO;
import com.xnjr.mall.domain.StoreTicket;

public interface IStoreTicketDAO extends IBaseDAO<StoreTicket> {
    String NAMESPACE = IStoreTicketDAO.class.getName().concat(".");

    public int update(StoreTicket data);

    public int putOnOff(StoreTicket data);

    public int invalid(StoreTicket data);
}
