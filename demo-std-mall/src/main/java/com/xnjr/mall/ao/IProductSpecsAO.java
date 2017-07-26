package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.domain.ProductSpecs;

public interface IProductSpecsAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addProductSpecs(String productCode, String dkey,
            String dvalue, Integer orderNo);

    public void dropProductSpecs(String code);

    public void editProductSpecs(String code, String dkey, String dvalue,
            Integer orderNo);

    public ProductSpecs getProductSpecs(String code);

    public List<ProductSpecs> queryProductSpecsList(ProductSpecs condition);

}
