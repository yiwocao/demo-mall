package com.xnjr.mall.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnjr.mall.ao.IUserTicketAO;
import com.xnjr.mall.bo.IAccountBO;
import com.xnjr.mall.bo.IStoreBO;
import com.xnjr.mall.bo.IStoreTicketBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.bo.IUserTicketBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.domain.StoreTicket;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.domain.UserTicket;
import com.xnjr.mall.enums.EBizType;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.EStoreStatus;
import com.xnjr.mall.enums.EStoreTicketStatus;
import com.xnjr.mall.enums.ESysUser;
import com.xnjr.mall.exception.BizException;

@Service
public class UserTicketAOImpl implements IUserTicketAO {

    @Autowired
    private IUserTicketBO userTicketBO;

    @Autowired
    private IStoreTicketBO storeTicketBO;

    @Autowired
    private IStoreBO storeBO;

    @Autowired
    private IAccountBO accountBO;

    @Autowired
    private IUserBO userBO;

    @Override
    @Transactional
    public String buyTicket(String code, String userId) {
        // 判断折扣券是否可买
        StoreTicket storeTicket = storeTicketBO.getStoreTicket(code);
        if (!EStoreTicketStatus.ON.getCode().equals(storeTicket.getStatus())) {
            throw new BizException("xn0000", "折扣券不是上架状态，不可购买");
        }
        // 判断店铺是否开店
        Store store = storeBO.getStore(storeTicket.getStoreCode());
        if (!EStoreStatus.ON_OPEN.getCode().equals(store.getStatus())) {
            throw new BizException("xn0000", "折扣店对应店铺不处于上架开店状态，不可购买");
        }
        // 判断购买人是否存在
        User user = userBO.getRemoteUser(userId);
        // 折扣券落地
        String ticketCode = userTicketBO.saveUserTicket(user, storeTicket);
        // 资金划转：用户的钱包币给平台
        String systemUser = ESysUser.SYS_USER_ZHPAY.getCode();
        ECurrency currency = ECurrency.getResultMap().get(
            storeTicket.getCurrency());
        accountBO.doTransferAmountRemote(userId, systemUser, currency,
            storeTicket.getPrice(), EBizType.AJ_GMZKQ, "折扣券购买", "折扣券购买");
        return ticketCode;
    }

    @Override
    public Paginable<UserTicket> queryUserTicketPage(int start, int limit,
            UserTicket condition) {
        Paginable<UserTicket> page = userTicketBO.getPaginable(start, limit,
            condition);
        List<UserTicket> list = page.getList();
        for (UserTicket userTicket : list) {
            StoreTicket storeTicket = storeTicketBO.getStoreTicket(userTicket
                .getTicketCode());
            userTicket.setStoreTicket(storeTicket);
            userTicket.setStore(storeBO.getStore(storeTicket.getStoreCode()));
        }
        return page;
    }

}
