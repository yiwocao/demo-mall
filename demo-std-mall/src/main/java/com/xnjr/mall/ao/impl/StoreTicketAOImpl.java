package com.xnjr.mall.ao.impl;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xnjr.mall.ao.IStoreTicketAO;
import com.xnjr.mall.bo.IStoreTicketBO;
import com.xnjr.mall.bo.IUserTicketBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.common.DateUtil;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.StoreTicket;
import com.xnjr.mall.domain.UserTicket;
import com.xnjr.mall.dto.req.XN808250Req;
import com.xnjr.mall.dto.req.XN808252Req;
import com.xnjr.mall.enums.EBoolean;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.EGeneratePrefix;
import com.xnjr.mall.enums.EStoreTicketStatus;
import com.xnjr.mall.enums.EUserTicketStatus;
import com.xnjr.mall.exception.BizException;

@Service
public class StoreTicketAOImpl implements IStoreTicketAO {
    protected static final Logger logger = LoggerFactory
        .getLogger(OrderAOImpl.class);

    @Autowired
    private IStoreTicketBO storeTicketBO;

    @Autowired
    private IUserTicketBO userTicketBO;

    @Override
    public String addStoreTicket(XN808250Req req) {
        Date validateStart = DateUtil.getFrontDate(req.getValidateStart(),
            false);
        Date validateEnd = DateUtil.getFrontDate(req.getValidateEnd(), true);
        if (validateEnd.before(validateStart)) {
            throw new BizException("xn0000", "有效期结束时间不能早于有效期起始时间");
        }
        StoreTicket data = new StoreTicket();
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STORE_TICKET
            .getCode());
        data.setCode(code);
        data.setName(req.getName());
        data.setType(req.getType());
        data.setKey1(StringValidater.toLong(req.getKey1()));
        data.setKey2(StringValidater.toLong(req.getKey2()));
        data.setDescription(req.getDescription());
        data.setPrice(StringValidater.toLong(req.getPrice()));
        data.setCurrency(ECurrency.ZH_QBB.getCode());
        data.setValidateStart(validateStart);
        data.setValidateEnd(validateEnd);
        data.setCreateDatetime(new Date());
        if (EBoolean.YES.getCode().equals(req.getIsPutaway())) {
            data.setStatus(EStoreTicketStatus.ON.getCode());
        } else {
            data.setStatus(EStoreTicketStatus.TO_ON.getCode());
        }
        data.setStoreCode(req.getStoreCode());
        data.setCompanyCode(req.getCompanyCode());
        data.setSystemCode(req.getSystemCode());
        storeTicketBO.saveStoreTicket(data);
        return code;
    }

    @Override
    public void dropStoreTicket(String code) {
        StoreTicket storeTicket = storeTicketBO.getStoreTicket(code);
        if (!EStoreTicketStatus.TO_ON.getCode().equals(storeTicket.getStatus())) {
            throw new BizException("xn0000", "当前折扣券不处于待上架状态，无法删除");
        }
        storeTicketBO.removeStoreTicket(code);
    }

    @Override
    public void editStoreTicket(XN808252Req req) {
        StoreTicket storeTicket = storeTicketBO.getStoreTicket(req.getCode());
        if (!EStoreTicketStatus.TO_ON.getCode().equals(storeTicket.getStatus())) {
            throw new BizException("xn0000", "折扣券状态不允许修改，待上架状态可修改");
        }
        Date validateStart = DateUtil.getFrontDate(req.getValidateStart(),
            false);
        Date validateEnd = DateUtil.getFrontDate(req.getValidateEnd(), true);
        if (validateEnd.before(validateStart)) {
            throw new BizException("xn0000", "有效期结束时间不能早于有效期起始时间");
        }
        StoreTicket data = new StoreTicket();
        data.setCode(req.getCode());
        data.setName(req.getName());
        data.setType(req.getType());
        data.setKey1(StringValidater.toLong(req.getKey1()));
        data.setKey2(StringValidater.toLong(req.getKey2()));
        data.setDescription(req.getDescription());
        data.setPrice(StringValidater.toLong(req.getPrice()));
        data.setCurrency(ECurrency.ZH_QBB.getCode());
        data.setValidateStart(validateStart);
        data.setValidateEnd(validateEnd);
        if (EBoolean.YES.getCode().equals(req.getIsPutaway())) {
            data.setStatus(EStoreTicketStatus.ON.getCode());
        } else {
            data.setStatus(EStoreTicketStatus.TO_ON.getCode());
        }

        storeTicketBO.refreshStoreTicket(data);
    }

    @Override
    public void putOnOff(String code) {
        StoreTicket storeTicket = storeTicketBO.getStoreTicket(code);
        String status = null;
        if (EStoreTicketStatus.OFF.getCode().equals(storeTicket.getStatus())
                || EStoreTicketStatus.TO_ON.getCode().equals(
                    storeTicket.getStatus())) {
            status = EStoreTicketStatus.ON.getCode();
        } else if (EStoreTicketStatus.ON.getCode().equals(
            storeTicket.getStatus())) {
            status = EStoreTicketStatus.OFF.getCode();
        } else {
            throw new BizException("xn0000", "折扣券状态不允许上下架操作");
        }
        storeTicketBO.putOnOff(code, status);
    }

    @Override
    public Paginable<StoreTicket> queryStoreTicketPage(int start, int limit,
            StoreTicket condition, String userId) {
        Paginable<StoreTicket> page = storeTicketBO.getPaginable(start, limit,
            condition);
        List<StoreTicket> list = page.getList();
        setIsBuys(userId, list);
        return page;
    }

    /** 
     * 设置是否已购买该购物券
     * @param userId
     * @param list 
     * @create: 2017年3月26日 上午11:42:57 xieyj
     * @history: 
     */
    private void setIsBuys(String userId, List<StoreTicket> list) {
        for (StoreTicket storeTicket : list) {
            setIsBuy(userId, storeTicket);
        }
    }

    /** 
     * @param userId
     * @param storeTicket 
     * @create: 2017年3月26日 上午11:43:44 xieyj
     * @history: 
     */
    private void setIsBuy(String userId, StoreTicket storeTicket) {
        boolean isBuy = userTicketBO.isExistBuyTicket(userId,
            storeTicket.getCode());
        if (isBuy) {
            storeTicket.setIsBuy(EBoolean.YES.getCode());
        } else {
            storeTicket.setIsBuy(EBoolean.NO.getCode());
        }
    }

    @Override
    public List<StoreTicket> queryStoreTicketList(StoreTicket condition,
            String userId) {
        return storeTicketBO.queryStoreTicketList(condition);
    }

    @Override
    public StoreTicket getStoreTicket(String code) {
        return storeTicketBO.getStoreTicket(code);
    }

    /** 
     * @see com.xnjr.mall.ao.IStoreTicketAO#doChangeStatusByInvalid()
     */
    @Override
    public void doChangeStatusByInvalid() {
        logger.info("***************开始扫描失效折扣券记录***************");
        List<StoreTicket> storeTicketList = storeTicketBO
            .queryWillInValidList();
        for (StoreTicket storeTicket : storeTicketList) {
            storeTicketBO.invalid(storeTicket.getCode());
            List<UserTicket> utList = userTicketBO.queryUserTicketList(
                storeTicket.getCode(), EUserTicketStatus.UNUSED.getCode());
            for (UserTicket userTicket : utList) {
                userTicketBO.refreshUserTicketStatus(userTicket.getCode(),
                    EUserTicketStatus.INVAILD.getCode());
            }
        }
        logger.info("***************结束扫描失效折扣券记录***************");
    }
}
