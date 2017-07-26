package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.StoreAction;

public interface IStoreActionBO extends IPaginableBO<StoreAction> {

    public String saveStoreAction(String storeCode, String systemCode,
            String companyCode, String userId, String type);

    public int removeStoreAction(String code);

    public List<StoreAction> queryStoreActionList(StoreAction condition);

    public StoreAction getStoreAction(String code);

    public StoreAction getStoreAction(String storeCode, String userId,
            String type);

}
