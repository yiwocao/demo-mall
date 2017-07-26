package com.xnjr.mall.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.IStorePurchaseBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.dao.IStorePurchaseDAO;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.domain.StorePurchase;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.EGeneratePrefix;
import com.xnjr.mall.enums.EO2OPayType;
import com.xnjr.mall.enums.EPayType;
import com.xnjr.mall.enums.EStorePurchaseStatus;
import com.xnjr.mall.exception.BizException;

@Component
public class StorePurchaseBOImpl extends PaginableBOImpl<StorePurchase>
        implements IStorePurchaseBO {

    @Autowired
    private IStorePurchaseDAO storePurchaseDAO;

    @Override
    public List<StorePurchase> queryStorePurchaseList(StorePurchase condition) {
        return storePurchaseDAO.selectList(condition);
    }

    @Override
    public String storePurchaseCGcgb(User user, Store store, Long price,
            Long fdAmount) {
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STORE_PURCHASW
            .getCode());
        Date now = new Date();
        StorePurchase data = new StorePurchase();
        data.setCode(code);
        data.setUserId(user.getUserId());
        data.setStoreCode(store.getCode());
        data.setPrice(price);
        data.setBackAmount(fdAmount);
        data.setBackCurrency(ECurrency.CNY.getCode());
        data.setCreateDatetime(now);
        data.setStatus(EStorePurchaseStatus.PAYED.getCode());
        data.setPayType(EO2OPayType.CG_O2O_CGB.getCode());

        data.setPayAmount2(price);
        data.setPayDatetime(now);
        data.setRemark("菜狗币支付O2O消费");
        data.setSystemCode(store.getSystemCode());
        data.setCompanyCode(store.getCompanyCode());
        storePurchaseDAO.insert(data);
        return code;
    }

    @Override
    public String storePurchaseCGrmbjf(User user, Store store, Long amount,
            Long payRMB, Long payJF) {
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STORE_PURCHASW
            .getCode());
        Date now = new Date();
        StorePurchase data = new StorePurchase();
        data.setCode(code);
        data.setUserId(user.getUserId());
        data.setStoreCode(store.getCode());
        data.setPrice(amount);

        data.setCreateDatetime(now);
        data.setStatus(EStorePurchaseStatus.PAYED.getCode());
        data.setPayType(EO2OPayType.CG_02O_RMBJF.getCode());

        data.setPayAmount1(payRMB);
        data.setPayAmount3(payJF);

        data.setPayDatetime(now);
        data.setRemark("人民币积分组合支付O2O消费");
        data.setSystemCode(store.getSystemCode());
        data.setCompanyCode(store.getCompanyCode());
        storePurchaseDAO.insert(data);
        return code;
    }

    @Override
    public String storePurchaseCGWX(User user, Store store, Long amount, Long jf) {
        String payGroup = OrderNoGenerater
            .generateM(EGeneratePrefix.STORE_PURCHASW.getCode());
        Date now = new Date();
        StorePurchase data = new StorePurchase();
        data.setCode(OrderNoGenerater.generateM(EGeneratePrefix.STORE_PURCHASW
            .getCode()));
        data.setUserId(user.getUserId());
        data.setStoreCode(store.getCode());
        data.setPrice(amount);

        data.setCreateDatetime(now);
        data.setStatus(EStorePurchaseStatus.PAYED.getCode());
        data.setPayType(EO2OPayType.WEIXIN.getCode());
        data.setPayGroup(payGroup);

        data.setPayAmount2(jf);
        data.setPayDatetime(now);
        data.setRemark("微信支付O2O消费");
        data.setSystemCode(store.getSystemCode());
        data.setCompanyCode(store.getCompanyCode());
        storePurchaseDAO.insert(data);
        return payGroup;
    }

    @Override
    public String storePurchaseZHWX(User user, Store store, Long amount,
            String ticketCode) {
        String payGroup = OrderNoGenerater
            .generateM(EGeneratePrefix.STORE_PURCHASW.getCode());
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STORE_PURCHASW
            .getCode());
        Date now = new Date();
        // 落地本地系统消费记录，状态为未支付
        StorePurchase data = new StorePurchase();
        data.setCode(code);
        data.setUserId(user.getUserId());
        data.setStoreCode(store.getCode());
        data.setTicketCode(ticketCode);
        data.setPrice(amount);

        data.setCreateDatetime(now);
        data.setStatus(EStorePurchaseStatus.TO_PAY.getCode());
        data.setPayType(EO2OPayType.WEIXIN.getCode());

        data.setPayGroup(payGroup);

        data.setRemark("微信支付O2O消费");
        data.setSystemCode(store.getSystemCode());
        data.setCompanyCode(store.getCompanyCode());
        storePurchaseDAO.insert(data);
        return payGroup;
    }

    @Override
    public String storePurchaseZHZFB(User user, Store store, Long amount,
            String ticketCode) {
        String payGroup = OrderNoGenerater
            .generateM(EGeneratePrefix.STORE_PURCHASW.getCode());
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STORE_PURCHASW
            .getCode());
        Date now = new Date();
        // 落地本地系统消费记录，状态为未支付
        StorePurchase data = new StorePurchase();
        data.setCode(code);
        data.setUserId(user.getUserId());
        data.setStoreCode(store.getCode());
        data.setTicketCode(ticketCode);
        data.setPrice(amount);

        data.setCreateDatetime(now);
        data.setStatus(EStorePurchaseStatus.TO_PAY.getCode());
        data.setPayType(EO2OPayType.ALIPAY.getCode());

        data.setPayGroup(payGroup);

        data.setRemark("支付宝支付O2O消费");
        data.setSystemCode(store.getSystemCode());
        data.setCompanyCode(store.getCompanyCode());
        storePurchaseDAO.insert(data);
        return payGroup;
    }

    @Override
    public String storePurchaseZHYE(User user, Store store, String ticketCode,
            Long amount, Long frResultAmount, Long gxjlResultAmount) {
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STORE_PURCHASW
            .getCode());
        Date now = new Date();
        StorePurchase data = new StorePurchase();
        data.setCode(code);
        data.setUserId(user.getUserId());
        data.setStoreCode(store.getCode());
        data.setTicketCode(ticketCode);
        data.setPrice(amount);

        data.setCreateDatetime(now);
        data.setStatus(EStorePurchaseStatus.PAYED.getCode());
        data.setPayType(EO2OPayType.ZH_YE.getCode());

        data.setPayAmount2(frResultAmount);
        data.setPayAmount3(gxjlResultAmount);

        data.setPayDatetime(now);
        data.setRemark("余额支付O2O消费");
        data.setSystemCode(store.getSystemCode());
        data.setCompanyCode(store.getCompanyCode());
        storePurchaseDAO.insert(data);
        return null;
    }

    @Override
    public String storePurchaseGDYE(User user, Store store, Long amount,
            Long jfAmount) {
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STORE_PURCHASW
            .getCode());
        Date now = new Date();
        StorePurchase data = new StorePurchase();
        data.setCode(code);
        data.setUserId(user.getUserId());
        data.setStoreCode(store.getCode());
        data.setPrice(amount);

        data.setCreateDatetime(now);
        data.setStatus(EStorePurchaseStatus.PAYED.getCode());
        data.setPayType(EO2OPayType.GD_YE.getCode());

        data.setPayAmount2(jfAmount);

        data.setPayDatetime(now);
        data.setRemark("余额支付O2O消费");
        data.setSystemCode(store.getSystemCode());
        data.setCompanyCode(store.getCompanyCode());
        storePurchaseDAO.insert(data);
        return code;
    }

    /** 
     * @see com.xnjr.mall.bo.IStorePurchaseBO#getTotalIncome(java.lang.String)
     */
    @Override
    public Long getTotalIncome(String storeCode) {
        Long result = 0L;
        StorePurchase condition = new StorePurchase();
        condition.setStoreCode(storeCode);
        condition.setStatus(EStorePurchaseStatus.PAYED.getCode());
        List<StorePurchase> list = storePurchaseDAO.selectList(condition);
        for (StorePurchase storePurchase : list) {
            if (EPayType.WEIXIN_H5.getCode().equals(storePurchase.getPayType())
                    || EPayType.ALIPAY.getCode().equals(
                        storePurchase.getPayType())) {
                if (null != storePurchase.getPayAmount1()) {
                    result += storePurchase.getPayAmount1();
                }
            }
            if (EPayType.INTEGRAL.getCode().equals(storePurchase.getPayType())) { // 加上返现金额
                if (ECurrency.CNY.getCode().equals(
                    storePurchase.getBackCurrency())) {
                    result += storePurchase.getBackAmount();
                }
            }
        }
        return result;
    }

    @Override
    public StorePurchase getStorePurchaseByPayGroup(String payGroup) {
        StorePurchase condition = new StorePurchase();
        condition.setPayGroup(payGroup);
        List<StorePurchase> result = queryStorePurchaseList(condition);
        if (CollectionUtils.isEmpty(result)) {
            throw new BizException("XN000000", "找不到对应的消费记录");
        }
        return result.get(0);
    }

    @Override
    public void paySuccess(StorePurchase storePurchase, String payCode,
            Long payAmount) {
        storePurchase.setStatus(EStorePurchaseStatus.PAYED.getCode());
        storePurchase.setPayAmount1(payAmount);
        storePurchase.setPayCode(payCode);
        storePurchase.setPayDatetime(new Date());
        storePurchaseDAO.updatePaySuccess(storePurchase);
    }

}
