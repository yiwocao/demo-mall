package com.xnjr.mall.ao.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnjr.mall.ao.IStoreActionAO;
import com.xnjr.mall.bo.IProductBO;
import com.xnjr.mall.bo.IStoreActionBO;
import com.xnjr.mall.bo.IStoreBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Product;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.domain.StoreAction;
import com.xnjr.mall.enums.EStoreActionType;

@Service
public class StoreActionAOImpl implements IStoreActionAO {

    @Autowired
    private IStoreActionBO storeActionBO;

    @Autowired
    private IStoreBO storeBO;

    @Autowired
    private IProductBO productBO;

    @Autowired
    private IUserBO userBO;

    @Override
    @Transactional
    public void doAction(String storeCode, String userId, String type) {
        if (EStoreActionType.PJ.getCode().equals(type)) {
            doPjProduct(storeCode, userId, type);
        } else {
            doActionStore(storeCode, userId, type);
        }

    }

    private void doActionStore(String storeCode, String userId, String type) {
        Store store = storeBO.getStore(storeCode);
        StoreAction dbAction = storeActionBO.getStoreAction(storeCode, userId,
            type);
        Integer changeNum = 0;
        if (dbAction != null) {// 已有则反向
            storeActionBO.removeStoreAction(dbAction.getCode());
            changeNum = -1;
        } else {
            storeActionBO.saveStoreAction(store.getCode(),
                store.getSystemCode(), store.getCompanyCode(), userId, type);
            changeNum = 1;
        }
        changeDzScNum(store, type, changeNum);
    }

    private void doPjProduct(String productCode, String userId, String type) {
        Product product = productBO.getProduct(productCode);
        storeActionBO.saveStoreAction(product.getCode(),
            product.getSystemCode(), product.getCompanyCode(), userId, type);
    }

    private void changeDzScNum(Store data, String type, Integer changeNum) {
        if (EStoreActionType.DZ.getCode().equals(type)) {
            storeBO.refreshTotalDzNum(data, changeNum);
        } else {
            storeBO.refreshTotalScNum(data, changeNum);
        }
    }

    @Override
    public Paginable<StoreAction> queryStoreActionPage(int start, int limit,
            StoreAction condition) {
        Paginable<StoreAction> results = storeActionBO.getPaginable(start,
            limit, condition);
        if (CollectionUtils.isNotEmpty(results.getList())) {
            for (StoreAction storeAction : results.getList()) {
                storeAction.setUser(userBO.getRemoteUser(storeAction
                    .getActionUser()));
            }
        }
        return results;
    }

    @Override
    public List<StoreAction> queryStoreActionList(StoreAction condition) {
        return storeActionBO.queryStoreActionList(condition);
    }

    @Override
    public StoreAction getStoreAction(String code) {
        return storeActionBO.getStoreAction(code);
    }
}
