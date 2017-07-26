package com.xnjr.mall.ao.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xnjr.mall.ao.IStockAO;
import com.xnjr.mall.bo.IAccountBO;
import com.xnjr.mall.bo.ICaigopoolBO;
import com.xnjr.mall.bo.ISYSConfigBO;
import com.xnjr.mall.bo.IStockBO;
import com.xnjr.mall.bo.IStockBackBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.common.AmountUtil;
import com.xnjr.mall.common.DateUtil;
import com.xnjr.mall.common.SysConstants;
import com.xnjr.mall.domain.Account;
import com.xnjr.mall.domain.SYSConfig;
import com.xnjr.mall.domain.Stock;
import com.xnjr.mall.dto.res.XN808419Res;
import com.xnjr.mall.dto.res.XN808420Res;
import com.xnjr.mall.enums.EBizType;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.EStockStatus;
import com.xnjr.mall.enums.ESysUser;
import com.xnjr.mall.enums.ESystemCode;
import com.xnjr.mall.enums.EZhPool;

@Service
public class StockAOImpl implements IStockAO {
    static Logger logger = Logger.getLogger(StockAOImpl.class);

    @Autowired
    private IStockBO stockBO;

    @Autowired
    private ICaigopoolBO caigopoolBO;

    @Autowired
    private IStockBackBO stockBackBO;

    @Autowired
    private IAccountBO accountBO;

    @Autowired
    private ISYSConfigBO sysConfigBO;

    @Autowired
    private IUserBO userBO;

    @Override
    public Paginable<Stock> queryStockPage(int start, int limit, Stock condition) {
        return stockBO.getPaginable(start, limit, condition);
    }

    @Override
    public Stock getStock(String code) {
        return stockBO.getStock(code);
    }

    @Override
    public List<Stock> queryMyStockList(String userId) {
        return stockBO.queryMyStockList(userId);
    }

    @Override
    public void doDailyStock() {
        logger.info("***************开始扫描分红权***************");
        // Date now = new Date();
        Stock condition = new Stock();
        condition.setStatus(EStockStatus.ING_effect.getCode());
        condition.setNextBackDateStart(DateUtil.getTodayStart());// 确定是今天的才开始
        condition.setNextBackDateEnd(DateUtil.getTodayEnd());
        List<Stock> list = stockBO.queryStockList(condition);
        if (CollectionUtils.isNotEmpty(list)) {
            for (Stock ele : list) {
                Account fund = accountBO.getRemoteAccount(ele.getFundCode(),
                    ECurrency.ZH_FRB);
                // 更新返还金额
                String status = null;
                Date nextBackDate = null;
                Long todayAmount = getTodayAmount(ele);
                Long backAmount = ele.getBackAmount() + todayAmount;
                if (backAmount >= ele.getProfitAmount()) {// 本分红权返利结束
                    status = EStockStatus.DONE.getCode();
                    nextBackDate = null;
                    todayAmount = ele.getProfitAmount() - ele.getBackAmount();
                    backAmount = ele.getProfitAmount();
                } else {
                    status = ele.getStatus();
                    nextBackDate = DateUtil.getRelativeDate(
                        DateUtil.getTodayStart(),
                        ele.getBackInterval() * 24 * 60 * 60);
                }
                if (fund.getAmount() < todayAmount) {// 池不够钱时
                    continue;
                }
                if (EStockStatus.DONE.getCode().equals(status)) {
                    stockBO.awakenStock(ele.getUserId());
                }
                // 更新股权
                ele.setBackCount(ele.getBackCount() + 1);
                ele.setBackAmount(backAmount);
                ele.setTodayAmount(todayAmount);
                ele.setNextBackDate(nextBackDate);
                ele.setStatus(status);
                stockBO.doDailyStock(ele);
                // 落地返还记录
                stockBackBO.saveStockBack(ele);
                // 扣减池金额
                if (EZhPool.ZHPAY_STORE.getCode().equals(ele.getFundCode())) {
                    accountBO.doTransferAmountRemote(ele.getFundCode(),
                        ele.getUserId(), ECurrency.ZH_FRB, todayAmount,
                        EBizType.ZH_STOCK, "正汇分红权分红", "正汇分红权分红");
                }
                if (EZhPool.ZHPAY_CUSTOMER.getCode().equals(ele.getFundCode())) {
                    Long half = Double.valueOf(todayAmount / 2).longValue();
                    accountBO.doTransferAmountRemote(ele.getFundCode(),
                        ele.getUserId(), ECurrency.ZH_FRB, half,
                        EBizType.ZH_STOCK, "正汇分红权分红", "正汇分红权分红");
                    accountBO.doTransferAmountRemote(ele.getFundCode(),
                        ESysUser.SYS_USER_ZHPAY.getCode(), ECurrency.ZH_FRB,
                        half, EBizType.ZH_STOCK, "正汇分红权分红", "正汇分红权分红");
                    accountBO.doTransferAmountRemote(
                        ESysUser.SYS_USER_ZHPAY.getCode(), ele.getUserId(),
                        ECurrency.ZH_GXZ, half, EBizType.ZH_STOCK, "正汇分红权分红",
                        "正汇分红权分红");
                }

            }
        }
        logger.info("***************结束扫描分红权***************");
    }

    private Long getTodayAmount(Stock ele) {
        Double todayAmount = null;
        if (EZhPool.ZHPAY_STORE.getCode().equals(ele.getFundCode())) {
            SYSConfig config = sysConfigBO.getSYSConfig(
                SysConstants.STORE_STOCK_DAYBACK, ESystemCode.ZHPAY.getCode());
            todayAmount = Double.valueOf(config.getCvalue());
        }
        if (EZhPool.ZHPAY_CUSTOMER.getCode().equals(ele.getFundCode())) {
            SYSConfig config = sysConfigBO.getSYSConfig(
                SysConstants.USER_STOCK_DAYBACK, ESystemCode.ZHPAY.getCode());
            todayAmount = Double.valueOf(config.getCvalue());
        }
        return AmountUtil.mul(1000L, todayAmount);
    }

    @Override
    public Stock getMyNextStock(String userId) {
        return stockBO.getMyNextStock(userId);
    }

    @Override
    public XN808419Res getMyTodayStocks(String userId) {
        XN808419Res res = new XN808419Res();
        List<Stock> list = stockBO.queryMyStockList(userId);
        if (CollectionUtils.isNotEmpty(list)) {
            Long todayProfitAmount = 0L;
            for (Stock ele : list) {
                todayProfitAmount = todayProfitAmount + ele.getTodayAmount();
            }
            res.setStockCount(list.size());
            res.setTodayProfitAmount(todayProfitAmount);
        } else {
            res.setStockCount(0);
            res.setTodayProfitAmount(0L);
        }
        return res;
    }

    /** 
     * @see com.xnjr.mall.ao.IStockAO#getStaticStockNum()
     */
    @Override
    public XN808420Res getStaticStockNum() {
        Stock condition = new Stock();
        condition.setFundCode(EZhPool.ZHPAY_CUSTOMER.getCode());
        long userStockNum = stockBO.getTotalCount(condition);
        condition.setFundCode(EZhPool.ZHPAY_STORE.getCode());
        long storeStockNum = stockBO.getTotalCount(condition);
        return new XN808420Res(userStockNum, storeStockNum);
    }
}
