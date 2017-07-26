package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.StoreTicket;

public interface IStoreTicketBO extends IPaginableBO<StoreTicket> {

    public void saveStoreTicket(StoreTicket data);

    public int removeStoreTicket(String code);

    public int refreshStoreTicket(StoreTicket data);

    public int putOnOff(String code, String status);

    public List<StoreTicket> queryStoreTicketList(StoreTicket condition);

    public List<StoreTicket> queryWillInValidList();

    public StoreTicket getStoreTicket(String code);

    public void invalid(String code);

}
