package com.xnjr.mall.ao.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnjr.mall.ao.IStorePurchaseAO;
import com.xnjr.mall.bo.IAccountBO;
import com.xnjr.mall.bo.IDistributeBO;
import com.xnjr.mall.bo.ISYSConfigBO;
import com.xnjr.mall.bo.IStoreBO;
import com.xnjr.mall.bo.IStorePurchaseBO;
import com.xnjr.mall.bo.IStoreTicketBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.bo.IUserTicketBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.common.AmountUtil;
import com.xnjr.mall.common.SysConstants;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Account;
import com.xnjr.mall.domain.SYSConfig;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.domain.StorePurchase;
import com.xnjr.mall.domain.StoreTicket;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.domain.UserTicket;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.dto.res.XN808248Res;
import com.xnjr.mall.enums.EBizType;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.EO2OPayType;
import com.xnjr.mall.enums.EPayType;
import com.xnjr.mall.enums.EStoreLevel;
import com.xnjr.mall.enums.EStorePurchaseStatus;
import com.xnjr.mall.enums.EStoreStatus;
import com.xnjr.mall.enums.EStoreTicketType;
import com.xnjr.mall.enums.ESysUser;
import com.xnjr.mall.enums.EUserTicketStatus;
import com.xnjr.mall.exception.BizException;

@Service
public class StorePurchaseAOImpl implements IStorePurchaseAO {
    static Logger logger = Logger.getLogger(StorePurchaseAOImpl.class);

    @Autowired
    private IStorePurchaseBO storePurchaseBO;

    @Autowired
    private IStoreBO storeBO;

    @Autowired
    private IDistributeBO distributeBO;

    @Autowired
    private IStoreTicketBO storeTicketBO;

    @Autowired
    private IUserTicketBO userTicketBO;

    @Autowired
    private ISYSConfigBO sysConfigBO;

    @Autowired
    private IUserBO userBO;

    @Autowired
    private IAccountBO accountBO;

    @Override
    public String storePurchaseCGB(String userId, String storeCode,
            Long cgbTotalAmount, String payType) {
        User user = userBO.getRemoteUser(userId);
        Store store = storeBO.getStore(storeCode);
        if (!EStoreStatus.ON_OPEN.getCode().equals(store.getStatus())) {
            throw new BizException("xn0000", "店铺不处于可消费状态");
        }
        Account cgbAccount = accountBO.getRemoteAccount(user.getUserId(),
            ECurrency.CG_CGB);
        if (cgbAccount.getAmount() < cgbTotalAmount) {
            throw new BizException("xn0000", "菜狗币账户余额不足");
        }
        // 计算返点人民币
        Long fdAmount = Double.valueOf(cgbTotalAmount * store.getRate3())
            .longValue();
        // 落地本地系统消费记录
        String code = storePurchaseBO.storePurchaseCGcgb(user, store,
            cgbTotalAmount, fdAmount);
        // 资金划转开始--------------
        // 菜狗币从消费者回收至平台，
        String systemUser = ESysUser.SYS_USER_CAIGO.getCode();
        accountBO.doTransferAmountRemote(user.getUserId(), systemUser,
            ECurrency.CG_CGB, cgbTotalAmount, EBizType.CG_O2O_CGB,
            "O2O消费使用菜狗币", "O2O消费回收菜狗币");
        // 商家从平台处拿到返点（人民币）
        accountBO.doTransferAmountRemote(systemUser, store.getOwner(),
            ECurrency.CNY, fdAmount, EBizType.CG_O2O_CGBFD, "O2O消费支付返点人民币",
            "O2O消费收到返点人民币");
        // 资金划转结束--------------
        return code;
    }

    @Override
    public Object storePurchaseRMBJF(String userId, String storeCode,
            Long rmbTotalAmount, String payType) {
        User user = userBO.getRemoteUser(userId);
        Store store = storeBO.getStore(storeCode);
        if (!EStoreStatus.ON_OPEN.getCode().equals(store.getStatus())) {
            throw new BizException("xn0000", "店铺不处于可消费状态");
        }
        if (EPayType.CG_YE.getCode().equals(payType)) {
            return storePurchaseCGYE(user, store, rmbTotalAmount);
        }
        if (EPayType.WEIXIN_H5.getCode().equals(payType)) {
            return storePurchaseCGWX(user, store, rmbTotalAmount);
        } else {
            throw new BizException("xn0000", "支付方式不存在");
        }
    }

    @Override
    public Object storePurchaseGD(String userId, String storeCode, Long amount,
            String payType) {
        User user = userBO.getRemoteUser(userId);
        Store store = storeBO.getStore(storeCode);
        if (amount <= 0) {
            throw new BizException("xn0000", "消费金额必须大于0");
        }
        if (!EStoreStatus.ON_OPEN.getCode().equals(store.getStatus())) {
            throw new BizException("xn0000", "店铺不处于可消费状态");
        }
        if (EPayType.GD_YE.getCode().equals(payType)) {
            return storePurchaseGDYE(user, store, amount);
        } else {
            throw new BizException("xn0000", "支付方式不存在");
        }
    }

    @Transactional
    public Object storePurchaseGDYE(User user, Store store, Long amount) {
        SYSConfig config = sysConfigBO.getSYSConfig(SysConstants.STORE_RMB2JF,
            store.getCompanyCode(), store.getSystemCode());
        Long payJF = 0L;// 需要支付的积分金额
        try {
            payJF = Double.valueOf(
                amount * StringValidater.toDouble(config.getCvalue()))
                .longValue();
        } catch (Exception e) {
            logger.error("人民币换算积分");
        }
        Account jfAccount = accountBO.getRemoteAccount(user.getUserId(),
            ECurrency.JF);// 积分账户
        if (jfAccount.getAmount() < payJF) {
            throw new BizException("xn0000", "积分账户余额不足");
        }
        // 落地本地系统消费记录
        storePurchaseBO.storePurchaseGDYE(user, store, amount, payJF);
        // 资金划转开始--------------
        // 积分从消费者回收至平台，
        String systemUser = ESysUser.SYS_USER_PIPE.getCode();
        accountBO.doTransferAmountRemote(user.getUserId(), systemUser,
            ECurrency.JF, payJF, EBizType.GD_O2O, "O2O消费积分回收", "O2O消费积分回收");
        // 资金划转结束--------------
        return new BooleanRes(true);
    }

    private Object storePurchaseCGYE(User user, Store store, Long rmbTotalAmount) {
        Long payRMB = null;// 需要支付的RMB金额
        Long payJF = null;// 需要支付的积分金额
        Long dxRMB = AmountUtil.mul(rmbTotalAmount, store.getRate2());// 可被抵消的人民币部分
        Double rate = accountBO.getExchangeRateRemote(ECurrency.CGJF);
        Long dxJF = AmountUtil.mul(dxRMB, rate);// 可抵消的积分
        Account jfAccount = accountBO.getRemoteAccount(user.getUserId(),
            ECurrency.CGJF);// 积分账户
        if (jfAccount.getAmount() < dxJF) {// 积分余额不足时,自己积分全部用掉，不够部分用人民币抵消
            payJF = jfAccount.getAmount();
            Long addRMB = Double.valueOf((dxJF - payJF) / rate).longValue();
            payRMB = rmbTotalAmount - dxRMB + addRMB;
        } else {
            payJF = dxJF;
            payRMB = rmbTotalAmount - dxRMB;
        }
        Account cnyAccount = accountBO.getRemoteAccount(user.getUserId(),
            ECurrency.CNY);
        if (cnyAccount.getAmount() < payRMB) {
            throw new BizException("xn0000", "人民币账户余额不足");
        }
        // 落地本地系统消费记录
        String code = storePurchaseBO.storePurchaseCGrmbjf(user, store,
            rmbTotalAmount, payRMB, payJF);
        // 资金划转开始--------------
        // 积分从消费者回收至平台，
        String systemUser = ESysUser.SYS_USER_CAIGO.getCode();
        accountBO.doTransferAmountRemote(user.getUserId(), systemUser,
            ECurrency.CGJF, payJF, EBizType.CG_O2O_CGJF, "O2O消费积分回收",
            "O2O消费积分回收");
        // 人民币给商家（人民币）
        accountBO.doTransferAmountRemote(user.getUserId(), store.getOwner(),
            ECurrency.CNY, payRMB, EBizType.CG_O2O_RMB, "O2O消费人民币支付",
            "O2O消费人民币支付");
        // 资金划转结束--------------
        return code;
    }

    private Object storePurchaseCGWX(User user, Store store, Long amount) {
        // 计算折扣，即积分扣钱金额
        Long discountAmount = Double.valueOf(amount * store.getRate2())
            .longValue();

        Double cgjf2cnyRate = accountBO.getExchangeRateRemote(ECurrency.CGJF);
        Long jf = Double.valueOf(discountAmount * cgjf2cnyRate).longValue();
        // 落地本地系统消费记录
        String payGroup = storePurchaseBO.storePurchaseCGWX(user, store,
            amount, jf);
        // 资金划转开始--------------
        // 积分从消费者回收至平台，
        String systemUser = ESysUser.SYS_USER_CAIGO.getCode();
        accountBO.doTransferAmountRemote(user.getUserId(), systemUser,
            ECurrency.JF, jf, EBizType.CG_O2O_CGJF, "O2O消费使用积分", "O2O消费回收积分");
        // RMB调用微信渠道至商家
        return accountBO.doWeiXinPayRemote(user.getUserId(), store.getOwner(),
            amount - discountAmount, EBizType.CG_O2O_RMB, "O2O消费微信支付",
            "O2O消费微信支付", payGroup);
        // 资金划转结束--------------
    }

    private Object storePurchaseZHWX(User user, Store store, Long amount,
            String ticketCode) {
        // 落地本地系统消费记录
        String payGroup = storePurchaseBO.storePurchaseZHWX(user, store,
            amount, ticketCode);
        // 资金划转开始--------------
        // RMB调用微信渠道至商家
        return accountBO.doWeiXinPayRemote(user.getUserId(), store.getOwner(),
            amount, EBizType.CG_O2O_RMB, "O2O消费微信支付", "O2O消费微信支付", payGroup);
        // 资金划转结束--------------
    }

    private Object storePurchaseZHZFB(User user, Store store, Long amount,
            String ticketCode) {
        // 落地本地系统消费记录
        String payGroup = storePurchaseBO.storePurchaseZHZFB(user, store,
            amount, ticketCode);
        // 资金划转开始--------------
        // RMB调用支付宝渠道至商家
        return accountBO.doAlipayRemote(user.getUserId(), store.getOwner(),
            amount, EBizType.ZH_O2O, "O2O消费支付宝支付", "O2O消费支付宝支付", payGroup);
        // 资金划转结束--------------
    }

    @Override
    @Transactional
    public Object storePurchaseZH(String userId, String storeCode, Long amount,
            String payType, String ticketCode) {
        Store store = storeBO.getStore(storeCode);
        if (!EStoreStatus.ON_OPEN.getCode().equals(store.getStatus())) {
            throw new BizException("xn0000", "店铺不处于可消费状态");
        }
        User user = userBO.getRemoteUser(userId);
        // 折扣券可扣减优惠金额
        Long ticketAmount = getTicketAmount(ticketCode, amount);
        if (ticketAmount > 0) {
            amount = amount - ticketAmount;
        }
        if (EO2OPayType.ZH_YE.getCode().equals(payType)) {
            return storePurchaseZHYE(user, store, amount, ticketCode);
        } else if (EO2OPayType.ALIPAY.getCode().equals(payType)) {
            return storePurchaseZHZFB(user, store, amount, ticketCode);
        } else if (EO2OPayType.WEIXIN.getCode().equals(payType)) {
            return storePurchaseZHWX(user, store, amount, ticketCode);
        } else {
            throw new BizException("xn0000", payType + "支付方式暂不支持");
        }

    }

    private Long getTicketAmount(String ticketCode, Long amount) {
        Long ticketAmount = 0L; // 扣除折扣券优惠
        if (StringUtils.isNotBlank(ticketCode)) {// 使用折扣券
            UserTicket userTicket = userTicketBO.getUserTicket(ticketCode);
            if (!EUserTicketStatus.UNUSED.getCode().equals(
                userTicket.getStatus())) {
                throw new BizException("xn0000", "该折扣券不可用");
            }
            StoreTicket storeTicket = storeTicketBO.getStoreTicket(userTicket
                .getTicketCode());
            if (storeTicket.getValidateStart().after(new Date())) {
                throw new BizException("xn0000", "该折扣券还未生效，请选择其他折扣券");
            }
            if (EStoreTicketType.MANJIAN.getCode()
                .equals(storeTicket.getType())) {
                if (amount < storeTicket.getKey1()) {
                    // throw new BizException("xn0000", "消费金额还未达到折扣券满减金额，无法使用");
                } else {
                    // 扣减消费金额
                    ticketAmount = storeTicket.getKey2();
                }
            }
            // 优惠券状态修改
            userTicketBO.refreshUserTicketStatus(ticketCode,
                EUserTicketStatus.USED.getCode());
        }
        return ticketAmount;
    }

    private String storePurchaseZHYE(User user, Store store, Long amount,
            String ticketCode) {
        Long frResultAmount = 0L;// 需要支付的分润金额
        Long gxjlResultAmount = 0L;// 需要支付的贡献值金额计算

        String buyUserId = user.getUserId();
        String storeUserId = store.getOwner();
        // 1、贡献奖励+分润<yhAmount 余额不足
        Account gxjlAccount = accountBO.getRemoteAccount(buyUserId,
            ECurrency.ZH_GXZ);
        Long gxjlAmount = gxjlAccount.getAmount();
        Account frAccount = accountBO.getRemoteAccount(buyUserId,
            ECurrency.ZH_FRB);
        Long frAmount = frAccount.getAmount();
        Double gxjl2cnyRate = accountBO.getExchangeRateRemote(ECurrency.ZH_GXZ);
        Double fr2cnyRate = accountBO.getExchangeRateRemote(ECurrency.ZH_FRB);
        if (gxjlAmount / gxjl2cnyRate + frAmount / fr2cnyRate < amount) {
            throw new BizException("xn0000", "余额不足");
        }
        // 2、计算frResultAmount和gxjlResultAmount
        if (gxjlAmount <= 0L) {
            frResultAmount = Double.valueOf(amount * fr2cnyRate).longValue();
            gxjlResultAmount = 0L;
        } else if (gxjlAmount > 0L && gxjlAmount / gxjl2cnyRate < amount) {// 0<贡献奖励<yhAmount
            frResultAmount = Double
                .valueOf(
                    (amount - Double.valueOf(gxjlAmount / gxjl2cnyRate)
                        .longValue()) * fr2cnyRate).longValue();
            gxjlResultAmount = gxjlAmount;
        } else if (gxjlAccount.getAmount() / gxjl2cnyRate >= amount) { // 4、贡献奖励>=yhAmount
            frResultAmount = 0L;
            gxjlResultAmount = Double.valueOf(amount * gxjl2cnyRate)
                .longValue();
        }
        // 落地本地系统消费记录
        String code = storePurchaseBO.storePurchaseZHYE(user, store,
            ticketCode, amount, frResultAmount, gxjlResultAmount);
        // ---资金划拨开始-----
        // 会员扣分润和贡献值，商家收分润，先全额收掉。
        String systemUser = ESysUser.SYS_USER_ZHPAY.getCode();
        if (gxjlResultAmount > 0L) {// 贡献值是给平台的，贡献值等值的(1:1)分润有平台给商家
            accountBO.doTransferAmountRemote(buyUserId, systemUser,
                ECurrency.ZH_GXZ, gxjlResultAmount, EBizType.ZH_O2O,
                "正汇O2O贡献值消费", "正汇O2O消费者的贡献值回收");
            accountBO.doTransferAmountRemote(systemUser, storeUserId,
                ECurrency.ZH_FRB, gxjlResultAmount, EBizType.ZH_O2O,
                "正汇O2O平台返现分润", "正汇O2O平台返现分润");
        }
        if (frResultAmount > 0L) {
            accountBO.doTransferAmountRemote(buyUserId, storeUserId,
                ECurrency.ZH_FRB, frResultAmount, EBizType.ZH_O2O,
                "正汇O2O消费者的分润支付", "正汇O2O消费者的分润支付");
        }
        // 用商家的钱开始分销
        if (StringUtils.isNotBlank(ticketCode)) {
            distributeBO.distribute1Amount(amount, store, user);
        } else {
            if (EStoreLevel.NOMAL.getCode().equals(store.getLevel())) {
                distributeBO.distribute10Amount(amount, store, user);
            }
            if (EStoreLevel.FINANCIAL.getCode().equals(store.getLevel())) {
                distributeBO.distribute25Amount(amount, frResultAmount, store,
                    user);
            }
        }
        return code;
    }

    @Override
    @Transactional
    public void paySuccess(String payGroup, String payCode, Long payAmount) {
        StorePurchase storePurchase = storePurchaseBO
            .getStorePurchaseByPayGroup(payGroup);
        if (EStorePurchaseStatus.TO_PAY.getCode().equals(
            storePurchase.getStatus())) {
            // 更新支付记录
            storePurchaseBO.paySuccess(storePurchase, payCode, payAmount);
            // 优惠券状态修改
            String ticketCode = storePurchase.getTicketCode();
            if (StringUtils.isNotBlank(ticketCode)) {
                userTicketBO.refreshUserTicketStatus(ticketCode,
                    EUserTicketStatus.USED.getCode());
            }
            // 用商家的钱开始分销
            Long storeFrAmount = storePurchase.getPrice();// 商家收到的分润
            Long userFrAmount = storeFrAmount;// 用户支付的分润
            Store store = storeBO.getStore(storePurchase.getStoreCode());
            User user = userBO.getRemoteUser(storePurchase.getUserId());
            if (StringUtils.isNotBlank(ticketCode)) {
                distributeBO.distribute1Amount(storeFrAmount, store, user);
            } else {
                if (EStoreLevel.NOMAL.getCode().equals(store.getLevel())) {
                    distributeBO.distribute10Amount(storeFrAmount, store, user);
                }
                if (EStoreLevel.FINANCIAL.getCode().equals(store.getLevel())) {
                    distributeBO.distribute25Amount(storeFrAmount,
                        userFrAmount, store, user);
                }
            }
        } else {
            logger.info("订单号：" + storePurchase.getCode() + "已支付，重复回调");
        }
    }

    @Override
    public Paginable<StorePurchase> queryStorePurchasePage(int start,
            int limit, StorePurchase condition) {
        Paginable<StorePurchase> page = storePurchaseBO.getPaginable(start,
            limit, condition);
        List<StorePurchase> list = page.getList();
        for (StorePurchase storePurchase : list) {
            Store store = storeBO.getStore(storePurchase.getStoreCode());
            storePurchase.setStore(store);
            if (StringUtils.isNotBlank(storePurchase.getTicketCode())) {
                UserTicket userTicket = userTicketBO
                    .getUserTicket(storePurchase.getTicketCode());
                StoreTicket storeTicket = storeTicketBO
                    .getStoreTicket(userTicket.getTicketCode());
                storePurchase.setStoreTicket(storeTicket);
            }
        }
        return page;
    }

    /** 
     * @see com.xnjr.mall.ao.IStorePurchaseAO#getLasterStorePurchase(java.lang.String)
     */
    @Override
    public XN808248Res getLasterStorePurchase(String storeCode) {
        XN808248Res result = null;
        StorePurchase condition = new StorePurchase();
        condition.setStoreCode(storeCode);
        condition.setStatus(EStorePurchaseStatus.PAYED.getCode());
        condition.setOrder("code", "desc");
        Paginable<StorePurchase> page = storePurchaseBO.getPaginable(1, 1,
            condition);

        List<StorePurchase> list = page.getList();
        if (page != null && CollectionUtils.isNotEmpty(list)) {
            StorePurchase data = list.get(0);
            if (EPayType.INTEGRAL.getCode().equals(data.getPayType())) {
                result = new XN808248Res();
                result.setAmount(data.getPayAmount2());
                result.setCurrency(ECurrency.CG_CGB.getCode());
                User user = userBO.getRemoteUser(data.getUserId());

                result.setCode(data.getCode());
                result.setPrice(data.getPrice());
                result.setMobile(user.getMobile());
                result.setNickName(user.getNickname());
                result.setCreateDatetime(data.getCreateDatetime());

                result.setStoreCode(data.getStoreCode());
                result.setCompanyCode(data.getCompanyCode());
                result.setSystemCode(data.getSystemCode());
            } else {
                result = null;
            }
        }
        return result;
    }

}
