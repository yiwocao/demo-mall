package com.xnjr.mall.bo.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xnjr.mall.bo.IAccountBO;
import com.xnjr.mall.bo.ISYSConfigBO;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.common.PropertiesUtil;
import com.xnjr.mall.domain.Account;
import com.xnjr.mall.dto.req.XN002050Req;
import com.xnjr.mall.dto.req.XN002051Req;
import com.xnjr.mall.dto.req.XN002100Req;
import com.xnjr.mall.dto.req.XN002500Req;
import com.xnjr.mall.dto.req.XN002501Req;
import com.xnjr.mall.dto.req.XN002510Req;
import com.xnjr.mall.dto.res.XN002050Res;
import com.xnjr.mall.dto.res.XN002051Res;
import com.xnjr.mall.dto.res.XN002500Res;
import com.xnjr.mall.dto.res.XN002501Res;
import com.xnjr.mall.dto.res.XN002510Res;
import com.xnjr.mall.enums.EBizType;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.http.BizConnecter;
import com.xnjr.mall.http.JsonUtils;

@Component
public class AccountBOImpl implements IAccountBO {
    static Logger logger = Logger.getLogger(AccountBOImpl.class);

    @Autowired
    private ISYSConfigBO sysConfigBO;

    @Override
    public Account getRemoteAccount(String userId, ECurrency currency) {
        XN002050Req req = new XN002050Req();
        req.setUserId(userId);
        req.setCurrency(currency.getCode());
        String jsonStr = BizConnecter.getBizData("002050",
            JsonUtils.object2Json(req));
        Gson gson = new Gson();
        List<XN002050Res> list = gson.fromJson(jsonStr,
            new TypeToken<List<XN002050Res>>() {
            }.getType());
        if (CollectionUtils.isEmpty(list)) {
            throw new BizException("xn000000", "用户[" + userId + "]账户不存在");
        }
        XN002050Res res = list.get(0);
        Account account = new Account();
        account.setAccountNumber(res.getAccountNumber());
        account.setUserId(res.getUserId());
        account.setRealName(res.getRealName());
        account.setType(res.getType());
        account.setStatus(res.getStatus());

        account.setCurrency(res.getCurrency());
        account.setAmount(res.getAmount());
        account.setFrozenAmount(res.getFrozenAmount());
        account.setCreateDatetime(res.getCreateDatetime());
        account.setLastOrder(res.getLastOrder());

        account.setSystemCode(res.getSystemCode());
        return account;
    }

    /** 
     * @see com.xnjr.mall.bo.IAccountBO#doTransferAmountRemote(java.lang.String, java.lang.String, java.lang.String, java.lang.Long, java.lang.String, java.lang.String)
     */
    @Override
    public void doTransferAmountRemote(String fromUserId, String toUserId,
            ECurrency currency, Long amount, EBizType bizType,
            String fromBizNote, String toBizNote) {
        if (amount != null && amount != 0) {
            XN002100Req req = new XN002100Req();
            req.setFromUserId(fromUserId);
            req.setToUserId(toUserId);
            req.setCurrency(currency.getCode());
            req.setTransAmount(String.valueOf(amount));
            req.setBizType(bizType.getCode());
            req.setFromBizNote(fromBizNote);
            req.setToBizNote(toBizNote);
            BizConnecter.getBizData("002100", JsonUtils.object2Json(req),
                Object.class);
        }
    }

    @Override
    public Double getExchangeRateRemote(ECurrency currency) {
        XN002051Req req = new XN002051Req();
        req.setFromCurrency(ECurrency.CNY.getCode());
        req.setToCurrency(currency.getCode());
        XN002051Res res = BizConnecter.getBizData("002051",
            JsonUtil.Object2Json(req), XN002051Res.class);
        return res.getRate();
    }

    @Override
    public XN002500Res doWeiXinPayRemote(String fromUserId, String toUserId,
            Long amount, EBizType bizType, String fromBizNote,
            String toBizNote, String payGroup) {
        // 获取微信APP支付信息
        XN002500Req req = new XN002500Req();
        req.setFromUserId(fromUserId);
        req.setToUserId(toUserId);
        req.setBizType(bizType.getCode());
        req.setFromBizNote(fromBizNote);
        req.setToBizNote(toBizNote);
        req.setTransAmount(String.valueOf(amount));
        req.setPayGroup(payGroup);
        XN002500Res res = BizConnecter.getBizData("002500",
            JsonUtil.Object2Json(req), XN002500Res.class);
        return res;
    }

    @Override
    public XN002510Res doAlipayRemote(String fromUserId, String toUserId,
            Long amount, EBizType bizType, String fromBizNote,
            String toBizNote, String payGroup) {
        // 获取支付宝APP支付信息
        XN002510Req req = new XN002510Req();
        req.setFromUserId(fromUserId);
        req.setToUserId(toUserId);
        req.setBizType(bizType.getCode());
        req.setFromBizNote(fromBizNote);
        req.setToBizNote(toBizNote);
        req.setTransAmount(String.valueOf(amount));
        req.setPayGroup(payGroup);
        req.setBackUrl(PropertiesUtil.Config.PAY_BACK_URL);
        XN002510Res res = BizConnecter.getBizData("002510",
            JsonUtil.Object2Json(req), XN002510Res.class);
        return res;
    }

    @Override
    public void doCgbJfPay(String fromUserId, String toUserId, Long cgbPrice,
            Long jfPrice, EBizType bizType) {
        // 检验菜狗币和积分是否充足
        checkCgbJf(fromUserId, cgbPrice, jfPrice);
        // 扣除菜狗币
        doTransferAmountRemote(fromUserId, toUserId, ECurrency.CG_CGB,
            cgbPrice, bizType, bizType.getValue(), bizType.getValue());
        // 扣除积分
        doTransferAmountRemote(fromUserId, toUserId, ECurrency.CGJF, jfPrice,
            bizType, bizType.getValue(), bizType.getValue());
    }

    @Override
    public void checkCgbJf(String userId, Long cgbAmount, Long jfAmount) {
        Account cgbAccount = getRemoteAccount(userId, ECurrency.CG_CGB);
        if (cgbAmount > cgbAccount.getAmount()) {
            throw new BizException("xn0000", "菜狗币不足");
        }
        Account xnbAccount = getRemoteAccount(userId, ECurrency.CGJF);
        if (jfAmount > xnbAccount.getAmount()) {
            throw new BizException("xn0000", "积分不足");
        }
    }

    @Override
    public void doCSWJfPay(String fromUserId, String toUserId, Long jfAmount,
            EBizType bizType) {
        doTransferAmountRemote(fromUserId, toUserId, ECurrency.JF, jfAmount,
            bizType, bizType.getValue(), bizType.getValue());
    }

    @Override
    public void doZHYEPay(String fromUserId, String toUserId, Long frbAmount,
            Long gxzAmount, Long gwbAmount, Long qbbAmount, EBizType bizType) {
        if (frbAmount > 0) {
            doTransferAmountRemote(fromUserId, toUserId, ECurrency.ZH_FRB,
                frbAmount, bizType, bizType.getValue(), bizType.getValue());
        }
        if (gxzAmount > 0) {
            doTransferAmountRemote(fromUserId, toUserId, ECurrency.ZH_GXZ,
                gxzAmount, bizType, bizType.getValue(), bizType.getValue());
        }
        if (gwbAmount > 0) {
            doTransferAmountRemote(fromUserId, toUserId, ECurrency.ZH_GWB,
                gwbAmount, bizType, bizType.getValue(), bizType.getValue());
        }
        if (qbbAmount > 0) {
            doTransferAmountRemote(fromUserId, toUserId, ECurrency.ZH_QBB,
                qbbAmount, bizType, bizType.getValue(), bizType.getValue());
        }
    }

    @Override
    public void checkZHYE(String userId, Long frbAmount, Long gxzAmount,
            Long cnyAmount, Long gwbAmount, Long qbbAmount) {
        if (cnyAmount > frbAmount + gxzAmount) {
            throw new BizException("xn0000", "分润币+贡献值不足");
        }
        checkZHGwbQbb(userId, gwbAmount, qbbAmount);
    }

    @Override
    public void checkZHGwbQbb(String userId, Long gwbAmount, Long qbbAmount) {
        Account gwbAccount = getRemoteAccount(userId, ECurrency.ZH_GWB);
        if (gwbAmount > gwbAccount.getAmount()) {
            throw new BizException("xn0000", "购物币不足");
        }
        Account qbbAccount = getRemoteAccount(userId, ECurrency.ZH_QBB);
        if (qbbAmount > qbbAccount.getAmount()) {
            throw new BizException("xn0000", "钱包币不足");
        }
    }

	@Override
	public XN002501Res doWeiXinH5PayRemote(String fromUserId, String fromOpenId, String toUserId, Long amount,
			EBizType bizType, String fromBizNote, String toBizNote, String payGroup) {
		 // 获取微信H5支付信息
        XN002501Req req = new XN002501Req();
        req.setFromUserId(fromUserId);
        req.setFromOpenId(fromOpenId);
        req.setToUserId(toUserId);
        req.setTransAmount(String.valueOf(amount));
        req.setBizType(bizType.getCode());
        req.setFromBizNote(fromBizNote);
        req.setToBizNote(toBizNote);
        req.setPayGroup(payGroup);
        req.setBackUrl(PropertiesUtil.Config.PAY_BACK_URL);
        System.out.println(fromUserId + "" + fromOpenId + "" + toUserId + ""
                + amount + "" + bizType + "" + fromBizNote + "" + toBizNote
                + "" + payGroup);
        XN002501Res res = BizConnecter.getBizData("002501",
            JsonUtil.Object2Json(req), XN002501Res.class);
        return res;
	}

}
