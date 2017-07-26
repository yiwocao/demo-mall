package com.xnjr.mall.dao;

import com.xnjr.mall.dao.base.IBaseDAO;
import com.xnjr.mall.domain.StorePurchase;

//dao层 
public interface IStorePurchaseDAO extends IBaseDAO<StorePurchase> {
    String NAMESPACE = IStorePurchaseDAO.class.getName().concat(".");

    public int updateStatus(StorePurchase data);

    public int updatePaySuccess(StorePurchase data);
}
