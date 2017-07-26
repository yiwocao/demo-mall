package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.StoreAction;

public interface IStoreActionAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public void doAction(String storeCode, String userId, String type);

    public Paginable<StoreAction> queryStoreActionPage(int start, int limit,
            StoreAction condition);

    public List<StoreAction> queryStoreActionList(StoreAction condition);

    public StoreAction getStoreAction(String code);

}
