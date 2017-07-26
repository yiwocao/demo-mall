package com.xnjr.mall.bo.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.IAccountBO;
import com.xnjr.mall.bo.IDistributeBO;
import com.xnjr.mall.bo.IStockBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.common.AmountUtil;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.enums.EBizType;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.ESysUser;
import com.xnjr.mall.enums.EUserKind;
import com.xnjr.mall.enums.EZhPool;

@Component
public class DistributeBOImpl implements IDistributeBO {
    static Logger logger = Logger.getLogger(DistributeBOImpl.class);

    @Autowired
    private IStockBO stockBO;

    @Autowired
    private IUserBO userBO;

    @Autowired
    private IAccountBO accountBO;

    @Override
    public void distribute1Amount(Long storeFrAmount, Store store, User user) {
        String systemUser = ESysUser.SYS_USER_ZHPAY.getCode();
        String storeUserId = store.getOwner();
        // 分给公司钱
        Long X1 = Double.valueOf(storeFrAmount * 0.01).longValue();
        if (X1 > 0) {
            accountBO.doTransferAmountRemote(storeUserId, systemUser,
                ECurrency.ZH_FRB, X1, EBizType.ZH_O2O, "正汇O2O抵扣券消费佣金",
                "正汇O2O抵扣券消费佣金");
        }

    }

    @Override
    public void distribute10Amount(Long storeFrAmount, Store store, User user) {
        String systemUser = ESysUser.SYS_USER_ZHPAY.getCode();
        String buyUserId = user.getUserId();
        String storeUserId = store.getOwner();
        // 1、买单用户得到消费额35%的钱包币 —— 平台发放
        Long c = Double.valueOf(storeFrAmount * 0.35).longValue();
        if (c > 0) {
            accountBO.doTransferAmountRemote(systemUser, buyUserId,
                ECurrency.ZH_QBB, c, EBizType.ZH_O2O, "正汇O2O平台赠送钱包币",
                "正汇O2O平台赠送钱包币");
        }
        // 21、买单用户的推荐人B可得到分润X1
        User bUser = userBO.getRemoteUser(user.getUserReferee());
        Long X1 = Double.valueOf(storeFrAmount * 0.015).longValue();
        if (X1 > 0) {
            if (bUser != null) {
                accountBO.doTransferAmountRemote(storeUserId,
                    bUser.getUserId(), ECurrency.ZH_FRB, X1, EBizType.ZH_O2O,
                    "正汇O2O一级推荐人分成", "正汇O2O一级推荐人分成");
            } else {// 没有人就给平台
                accountBO.doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X1, EBizType.ZH_O2O, "正汇O2O一级推荐人分成",
                    "正汇O2O一级推荐人分成");
            }

        }
        // 22、B的推荐人A可得到分润X2
        User aUser = userBO.getRemoteUser(bUser.getUserReferee());
        Long X2 = Double.valueOf(storeFrAmount * 0.015).longValue();
        if (X2 > 0) {
            if (aUser != null) {
                accountBO.doTransferAmountRemote(storeUserId,
                    aUser.getUserId(), ECurrency.ZH_FRB, X2, EBizType.ZH_O2O,
                    "正汇O2O二级推荐人分成", "正汇O2O二级推荐人分成");
            } else {
                accountBO.doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X2, EBizType.ZH_O2O, "正汇O2O二级推荐人分成",
                    "正汇O2O二级推荐人分成");
            }

        }
        // 23、店铺推荐人可得到分润X3 —— 消费额里面扣除
        Long X3 = Double.valueOf(storeFrAmount * 0.01).longValue();
        User storeReferee = userBO.getRemoteUser(store.getUserReferee());
        if (X3 > 0) {
            if (storeReferee != null) {
                accountBO.doTransferAmountRemote(storeUserId,
                    storeReferee.getUserId(), ECurrency.ZH_FRB, X3,
                    EBizType.ZH_O2O, "正汇O2O业务员分成", "正汇O2O业务员分成");
            } else {
                accountBO.doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X3, EBizType.ZH_O2O, "正汇O2O业务员分成",
                    "正汇O2O业务员分成");
            }

        }
        // 24、店铺所在县得到分瑞X4—— 消费额里面扣除
        Long X4 = Double.valueOf(storeFrAmount * 0.015).longValue();
        User areaUser = userBO.getPartner(store.getProvince(), store.getCity(),
            store.getArea(), EUserKind.Partner);
        if (X4 > 0) {
            if (areaUser != null) {
                accountBO.doTransferAmountRemote(storeUserId,
                    areaUser.getUserId(), ECurrency.ZH_FRB, X4,
                    EBizType.ZH_O2O, "正汇O2O县合伙人分成", "正汇O2O县合伙人分成");
            } else {
                accountBO.doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X4, EBizType.ZH_O2O, "正汇O2O县合伙人分成",
                    "正汇O2O县合伙人分成");
            }
        }
        // 25、公司X5—— 消费额里面扣除
        Long X5 = Double.valueOf(storeFrAmount * 0.045).longValue();
        if (X5 > 0) {
            accountBO
                .doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X5, EBizType.ZH_O2O, "正汇O2O公司分成",
                    "正汇O2O公司分成");
        }

    }

    @Override
    public void distribute25Amount(Long storeFrAmount, Long userFrAmount,
            Store store, User user) {
        String systemUser = ESysUser.SYS_USER_ZHPAY.getCode();
        String buyUserId = user.getUserId();
        String storeUserId = store.getOwner();
        // 21、买单用户的推荐人B可得到分润X1
        User bUser = userBO.getRemoteUser(user.getUserReferee());
        Long X1 = AmountUtil.mul(storeFrAmount, 0.008);
        if (X1 > 0) {
            if (bUser != null) {
                accountBO.doTransferAmountRemote(storeUserId,
                    bUser.getUserId(), ECurrency.ZH_FRB, X1, EBizType.ZH_O2O,
                    "正汇O2O一级推荐人分成", "正汇O2O一级推荐人分成");
            } else {
                accountBO.doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X1, EBizType.ZH_O2O, "正汇O2O一级推荐人分成",
                    "正汇O2O一级推荐人分成");
            }
        }
        // 22、B的推荐人A可得到分润X2
        User aUser = userBO.getRemoteUser(bUser.getUserReferee());
        Long X2 = AmountUtil.mul(storeFrAmount, 0.008);
        if (X2 > 0) {
            if (aUser != null) {
                accountBO.doTransferAmountRemote(storeUserId,
                    aUser.getUserId(), ECurrency.ZH_FRB, X2, EBizType.ZH_O2O,
                    "正汇O2O二级推荐人分成", "正汇O2O二级推荐人分成");
            } else {
                accountBO.doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X2, EBizType.ZH_O2O, "正汇O2O二级推荐人分成",
                    "正汇O2O二级推荐人分成");
            }
        }
        // 23、店铺推荐人可得到分润X3 —— 消费额里面扣除
        Long X3 = AmountUtil.mul(storeFrAmount, 0.009);
        User storeReferee = userBO.getRemoteUser(store.getUserReferee());
        if (X3 > 0) {
            if (storeReferee != null) {
                accountBO.doTransferAmountRemote(storeUserId,
                    storeReferee.getUserId(), ECurrency.ZH_FRB, X3,
                    EBizType.ZH_O2O, "正汇O2O业务员分成", "正汇O2O业务员分成");
            } else {
                accountBO.doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X3, EBizType.ZH_O2O, "正汇O2O业务员分成",
                    "正汇O2O业务员分成");
            }

        }
        // 24、店铺所在县得到分瑞X4—— 消费额里面扣除
        Long X4 = AmountUtil.mul(storeFrAmount, 0.015);
        User areaUser = userBO.getPartner(store.getProvince(), store.getCity(),
            store.getArea(), EUserKind.Partner);
        if (X4 > 0) {
            if (areaUser != null) {
                accountBO.doTransferAmountRemote(storeUserId,
                    areaUser.getUserId(), ECurrency.ZH_FRB, X4,
                    EBizType.ZH_O2O, "正汇O2O县合伙人分成", "正汇O2O县合伙人分成");
            } else {
                accountBO.doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X4, EBizType.ZH_O2O, "正汇O2O县合伙人分成",
                    "正汇O2O县合伙人分成");
            }

        }
        // 25、公司X5—— 消费额里面扣除
        Long X5 = AmountUtil.mul(storeFrAmount, 0.01);
        if (X5 > 0) {
            accountBO
                .doTransferAmountRemote(storeUserId, systemUser,
                    ECurrency.ZH_FRB, X5, EBizType.ZH_O2O, "正汇O2O公司分成",
                    "正汇O2O公司分成");
        }
        // 31、进基金池Y1
        Long Y1 = AmountUtil.mul(storeFrAmount, 0.02);
        String poolUser = EZhPool.ZHPAY_JJ.getCode();
        if (Y1 > 0) {
            accountBO
                .doTransferAmountRemote(storeUserId, poolUser,
                    ECurrency.ZH_FRB, Y1, EBizType.ZH_O2O, "正汇O2O入基金池",
                    "正汇O2O入基金池");
        }

        // 32、进商家池Y2
        Long Y2 = AmountUtil.mul(storeFrAmount, 0.04);
        poolUser = EZhPool.ZHPAY_STORE.getCode();
        if (Y2 > 0) {
            accountBO
                .doTransferAmountRemote(storeUserId, poolUser,
                    ECurrency.ZH_FRB, Y2, EBizType.ZH_O2O, "正汇O2O入商家池",
                    "正汇O2O入商家池");
        }

        // 31、进消费者池Y3
        Long Y3 = AmountUtil.mul(userFrAmount, 0.14);
        poolUser = EZhPool.ZHPAY_CUSTOMER.getCode();
        if (Y3 > 0) {
            accountBO.doTransferAmountRemote(storeUserId, poolUser,
                ECurrency.ZH_FRB, Y3, EBizType.ZH_O2O, "正汇O2O入消费者池",
                "正汇O2O入消费者池");
        }
        // 32、贡献值支付部分
        Long Y4 = AmountUtil.mul((storeFrAmount - userFrAmount), 0.14);
        if (Y4 > 0) {
            accountBO.doTransferAmountRemote(storeUserId, systemUser,
                ECurrency.ZH_FRB, Y4, EBizType.ZH_O2O, "正汇O2O贡献值部分分成",
                "正汇O2O贡献值部分分成");
        }

        // 形成B端分红权处理
        stockBO.generateBStock(storeFrAmount, storeUserId);
        // 形成C端分红权处理
        stockBO.generateCStock(userFrAmount, buyUserId);

    }
}
