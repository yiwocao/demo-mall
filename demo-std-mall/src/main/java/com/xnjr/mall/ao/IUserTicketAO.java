package com.xnjr.mall.ao;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.UserTicket;

public interface IUserTicketAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String buyTicket(String code, String userId);

    public Paginable<UserTicket> queryUserTicketPage(int start, int limit,
            UserTicket condition);

}
