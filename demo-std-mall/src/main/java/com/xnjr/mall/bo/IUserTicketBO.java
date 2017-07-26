package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.StoreTicket;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.domain.UserTicket;

public interface IUserTicketBO extends IPaginableBO<UserTicket> {

    public String saveUserTicket(User user, StoreTicket storeTicket);

    public int refreshUserTicketStatus(String code, String status);

    public List<UserTicket> queryUserTicketList(String storeTicketCode,
            String status);

    public boolean isExistBuyTicket(String userId, String storeTicket);

    public UserTicket getUserTicket(String code);

}
