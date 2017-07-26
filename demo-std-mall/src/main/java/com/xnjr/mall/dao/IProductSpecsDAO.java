package com.xnjr.mall.dao;

import com.xnjr.mall.dao.base.IBaseDAO;
import com.xnjr.mall.domain.ProductSpecs;

public interface IProductSpecsDAO extends IBaseDAO<ProductSpecs> {
    String NAMESPACE = IProductSpecsDAO.class.getName().concat(".");

    public int update(ProductSpecs data);
}
