package com.xnjr.mall.dao;

import com.xnjr.mall.dao.base.IBaseDAO;
import com.xnjr.mall.domain.Caigopool;

//dao层 
public interface ICaigopoolDAO extends IBaseDAO<Caigopool> {
    String NAMESPACE = ICaigopoolDAO.class.getName().concat(".");

    int addAmount(Caigopool pool);

    int outAmount(Caigopool pool);

    int changeRate(Caigopool pool);
}
