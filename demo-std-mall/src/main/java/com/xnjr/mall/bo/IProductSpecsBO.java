package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.ProductSpecs;

public interface IProductSpecsBO extends IPaginableBO<ProductSpecs> {

    public boolean isProductSpecsExist(String code);

    public String saveProductSpecs(ProductSpecs data);

    public int removeProductSpecs(String code);

    public int refreshProductSpecs(ProductSpecs data);

    public List<ProductSpecs> queryProductSpecsList(ProductSpecs condition);

    public ProductSpecs getProductSpecs(String code);

    public List<ProductSpecs> queryProductSpecsList(String productCode);

}
