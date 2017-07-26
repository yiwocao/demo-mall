package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.StoreTicket;
import com.xnjr.mall.dto.req.XN808250Req;
import com.xnjr.mall.dto.req.XN808252Req;

public interface IStoreTicketAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addStoreTicket(XN808250Req req);

    public void dropStoreTicket(String code);

    public void editStoreTicket(XN808252Req req);

    public void putOnOff(String code);

    public Paginable<StoreTicket> queryStoreTicketPage(int start, int limit,
            StoreTicket condition, String userId);

    public List<StoreTicket> queryStoreTicketList(StoreTicket condition,
            String userId);

    public StoreTicket getStoreTicket(String code);

    /**
     * 定时器更新店铺折扣券和用户折扣券失效
     * @return 
     * @create: 2017年1月17日 下午1:29:42 xieyj
     * @history:
     */
    public void doChangeStatusByInvalid();
}
