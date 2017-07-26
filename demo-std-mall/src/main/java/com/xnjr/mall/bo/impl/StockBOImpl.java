package com.xnjr.mall.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.ISYSConfigBO;
import com.xnjr.mall.bo.IStockBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.common.DateUtil;
import com.xnjr.mall.common.SysConstants;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.dao.IStockDAO;
import com.xnjr.mall.domain.SYSConfig;
import com.xnjr.mall.domain.Stock;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.EGeneratePrefix;
import com.xnjr.mall.enums.EStockStatus;
import com.xnjr.mall.enums.ESystemCode;
import com.xnjr.mall.enums.EZhPool;
import com.xnjr.mall.exception.BizException;

@Component
public class StockBOImpl extends PaginableBOImpl<Stock> implements IStockBO {

    @Autowired
    private IStockDAO stockDAO;

    @Autowired
    private ISYSConfigBO sysConfigBO;

    @Override
    public void generateCStock(Long frAmount, String buyUser) {
        Long peopleRemindCount = getPeopleRemindCount(buyUser);
        if (peopleRemindCount > 0) {
            Long remindCount = getDayRemindCount(buyUser);
            Long mod = frAmount % 500000;
            Long zheng = (frAmount - mod) / 500000;// 整数部分
            Long yu = frAmount - zheng * 500000;// 余数部分

            if (zheng > 0) {// 针对整数,生成整数个分红权
                for (int i = 0; i < zheng; i++) {
                    if (remindCount > 0) {
                        generateCFullStock(EStockStatus.ING_effect, buyUser);
                        remindCount = remindCount - 1;
                    } else {
                        generateCFullStock(EStockStatus.WILL_effect, buyUser);
                    }
                }
            }

            if (yu > 0) {// 针对余数,跟“等待生效”的分红权有关
                Stock dbStock = this.getMyNextStock(buyUser);
                if (dbStock == null) {
                    generateCPartStock(yu, buyUser);
                } else {
                    Long twoYu = dbStock.getCostAmount() + yu;
                    if (twoYu > 500000) {// 且肯定小于1000
                        if (remindCount > 0) {
                            generateCFullStock(EStockStatus.ING_effect, buyUser);
                        } else {
                            generateCFullStock(EStockStatus.WILL_effect,
                                buyUser);
                        }
                        refreshCostAmount(dbStock, twoYu - 500000);
                    } else if (twoYu < 500000) {// 且肯定大于0
                        refreshCostAmount(dbStock, twoYu);
                    } else {// 等于500'
                        if (remindCount > 0) {
                            refreshTOeffectStatus(dbStock,
                                EStockStatus.ING_effect);
                        } else {
                            refreshTOeffectStatus(dbStock,
                                EStockStatus.WILL_effect);
                        }
                    }
                }
            }

        }
    }

    private void refreshTOeffectStatus(Stock dbStock, EStockStatus status) {
        Date now = new Date();
        dbStock.setCostAmount(500000L);
        dbStock.setBackCount(0);
        dbStock.setBackAmount(0L);
        dbStock.setTodayAmount(0L);
        dbStock.setNextBackDate(DateUtil.getTomorrowStart(now));
        dbStock.setCreateDatetime(now);
        dbStock.setStatus(status.getCode());
        stockDAO.updateTOeffectStatus(dbStock);

    }

    @Override
    public void generateBStock(Long amount, String storeOwner) {
        Long remindCount = getDayRemindCount(storeOwner);
        Long mod = amount % 500000;
        Long zheng = (amount - mod) / 500000;// 整数部分
        Long yu = amount - zheng * 500000;// 余数部分

        if (zheng > 0) {// 针对整数,生成整数个分红权
            for (int i = 0; i < zheng; i++) {
                if (remindCount > 0) {
                    generateBFullStock(EStockStatus.ING_effect, storeOwner);
                    remindCount = remindCount - 1;
                } else {
                    generateBFullStock(EStockStatus.WILL_effect, storeOwner);
                }
            }
        }

        if (yu > 0) {// 针对余数,跟“等待生效”的分红权有关
            Stock dbStock = this.getMyNextStock(storeOwner);
            if (dbStock == null) {
                generateBPartStock(yu, storeOwner);
            } else {
                Long twoYu = dbStock.getCostAmount() + yu;
                if (twoYu > 500000) {// 且肯定小于1000
                    if (remindCount > 0) {
                        generateBFullStock(EStockStatus.ING_effect, storeOwner);
                    } else {
                        generateBFullStock(EStockStatus.WILL_effect, storeOwner);
                    }
                    refreshCostAmount(dbStock, twoYu - 500000);
                } else if (twoYu < 500000) {// 且肯定大于0
                    refreshCostAmount(dbStock, twoYu);
                } else {// 等于500'
                    if (remindCount > 0) {
                        refreshTOeffectStatus(dbStock, EStockStatus.ING_effect);
                    } else {
                        refreshTOeffectStatus(dbStock, EStockStatus.WILL_effect);
                    }
                }
            }

        }
    }

    private Long getPeopleRemindCount(String userId) {
        Long remindCount = null;// 一个人还可以生成分红权的个数
        // Long peopleMaxCount =60L;
        SYSConfig congfig = sysConfigBO.getSYSConfig(
            SysConstants.MAX_PERSON_STOCK, ESystemCode.ZHPAY.getCode());
        Long peopleMaxCount = Long.valueOf(congfig.getCvalue());
        List<Stock> list = this.queryMyStockList(userId);
        if (CollectionUtils.isNotEmpty(list)) {
            remindCount = peopleMaxCount - list.size();
        } else {
            remindCount = peopleMaxCount;
        }
        return remindCount;
    }

    private Long getDayRemindCount(String userId) {
        Long remindCount = null;// 还可以生成“生效中”分红权的个数
        // Long dayMaxCount = 3L;// 当天最大分红权个数，配置参数
        SYSConfig congfig = sysConfigBO.getSYSConfig(
            SysConstants.MAX_DAY_STOCK, ESystemCode.ZHPAY.getCode());
        Long dayMaxCount = Long.valueOf(congfig.getCvalue());
        List<Stock> ingList = this.queryIngStockList(userId);
        if (CollectionUtils.isNotEmpty(ingList)) {
            remindCount = dayMaxCount - ingList.size();
        } else {
            remindCount = dayMaxCount;
        }
        return remindCount;
    }

    private void refreshCostAmount(Stock dbStock, long newYu) {
        dbStock.setCostAmount(newYu);
        stockDAO.updateCostAmount(dbStock);
    }

    private void generateBPartStock(Long yu, String storeOwner) {
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STOCK
            .getCode());
        Stock data = new Stock();
        data.setCode(code);
        data.setUserId(storeOwner);
        data.setFundCode(EZhPool.ZHPAY_STORE.getCode());
        data.setCostAmount(yu);
        data.setCostCurrency(ECurrency.ZH_FRB.getCode());

        data.setBackInterval(1);
        data.setProfitAmount(150000L);
        data.setProfitCurrency(ECurrency.ZH_FRB.getCode());
        data.setBackCount(null);
        data.setBackAmount(null);

        data.setTodayAmount(null);
        data.setNextBackDate(null);
        data.setCreateDatetime(null);
        data.setStatus(EStockStatus.TO_effect.getCode());
        data.setSystemCode(ESystemCode.ZHPAY.getCode());
        data.setCompanyCode(ESystemCode.ZHPAY.getCode());
        stockDAO.insert(data);

    }

    private void generateCPartStock(Long yu, String userId) {
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STOCK
            .getCode());
        Stock data = new Stock();
        data.setCode(code);
        data.setUserId(userId);
        data.setFundCode(EZhPool.ZHPAY_CUSTOMER.getCode());
        data.setCostAmount(yu);
        data.setCostCurrency(ECurrency.ZH_FRB.getCode());

        data.setBackInterval(1);
        data.setProfitAmount(495000L);
        data.setProfitCurrency(ECurrency.ZH_FRB.getCode());
        data.setBackCount(null);
        data.setBackAmount(null);

        data.setTodayAmount(null);
        data.setNextBackDate(null);
        data.setCreateDatetime(null);
        data.setStatus(EStockStatus.TO_effect.getCode());
        data.setSystemCode(ESystemCode.ZHPAY.getCode());
        data.setCompanyCode(ESystemCode.ZHPAY.getCode());
        stockDAO.insert(data);

    }

    private void generateBFullStock(EStockStatus status, String storeOwner) {
        Date now = new Date();
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STOCK
            .getCode());
        Stock data = new Stock();
        data.setCode(code);
        data.setUserId(storeOwner);
        data.setFundCode(EZhPool.ZHPAY_STORE.getCode());
        data.setCostAmount(500000L);
        data.setCostCurrency(ECurrency.ZH_FRB.getCode());

        data.setBackInterval(1);
        data.setProfitAmount(150000L);
        data.setProfitCurrency(ECurrency.ZH_FRB.getCode());
        data.setBackCount(0);
        data.setBackAmount(0L);

        data.setTodayAmount(0L);
        data.setNextBackDate(DateUtil.getTomorrowStart(now));
        data.setCreateDatetime(now);
        data.setStatus(status.getCode());
        data.setSystemCode(ESystemCode.ZHPAY.getCode());
        data.setCompanyCode(ESystemCode.ZHPAY.getCode());
        stockDAO.insert(data);

    }

    private void generateCFullStock(EStockStatus status, String userId) {
        Date now = new Date();
        String code = OrderNoGenerater.generateM(EGeneratePrefix.STOCK
            .getCode());
        Stock data = new Stock();
        data.setCode(code);
        data.setUserId(userId);
        data.setFundCode(EZhPool.ZHPAY_CUSTOMER.getCode());
        data.setCostAmount(500000L);
        data.setCostCurrency(ECurrency.ZH_FRB.getCode());

        data.setBackInterval(1);
        data.setProfitAmount(495000L);
        data.setProfitCurrency(ECurrency.ZH_FRB.getCode());
        data.setBackCount(0);
        data.setBackAmount(0L);

        data.setTodayAmount(0L);
        data.setNextBackDate(DateUtil.getTomorrowStart(now));
        data.setCreateDatetime(now);
        data.setStatus(status.getCode());
        data.setSystemCode(ESystemCode.ZHPAY.getCode());
        data.setCompanyCode(ESystemCode.ZHPAY.getCode());
        stockDAO.insert(data);
    }

    @Override
    public Stock getStock(String code) {
        Stock data = null;
        if (StringUtils.isNotBlank(code)) {
            Stock condition = new Stock();
            condition.setCode(code);
            data = stockDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "股份编号不存在");
            }
        }
        return data;
    }

    @Override
    public List<Stock> queryMyStockList(String userId) {
        Stock condition = new Stock();
        condition.setUserId(userId);
        condition.setNoStatus(EStockStatus.TO_effect.getCode());
        return stockDAO.selectList(condition);
    }

    @Override
    public List<Stock> queryIngStockList(String userId) {
        Stock condition = new Stock();
        condition.setUserId(userId);
        condition.setStatus(EStockStatus.ING_effect.getCode());
        return stockDAO.selectList(condition);
    }

    @Override
    public List<Stock> queryStockList(Stock condition) {
        return stockDAO.selectList(condition);
    }

    @Override
    public int doDailyStock(Stock ele) {
        int count = 0;
        if (ele != null && StringUtils.isNotBlank(ele.getCode())) {
            count = stockDAO.doDailyStock(ele);
        }
        return count;
    }

    @Override
    public Stock getMyNextStock(String userId) {
        Stock result = null;
        Stock condition = new Stock();
        condition.setUserId(userId);
        condition.setStatus(EStockStatus.TO_effect.getCode());
        List<Stock> list = stockDAO.selectList(condition);
        if (CollectionUtils.isNotEmpty(list)) {
            result = list.get(0);
        }
        return result;
    }

    @Override
    public void awakenStock(String userId) {
        Stock result = null;
        Stock condition = new Stock();
        condition.setUserId(userId);
        condition.setStatus(EStockStatus.WILL_effect.getCode());
        List<Stock> list = stockDAO.selectList(condition);
        if (CollectionUtils.isNotEmpty(list)) {
            result = list.get(0);
            result.setStatus(EStockStatus.ING_effect.getCode());
            stockDAO.awakenStock(result);
        }

    }

}
