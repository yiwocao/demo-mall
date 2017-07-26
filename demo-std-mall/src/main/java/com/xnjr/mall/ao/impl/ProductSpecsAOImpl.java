package com.xnjr.mall.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xnjr.mall.ao.IProductSpecsAO;
import com.xnjr.mall.bo.IProductBO;
import com.xnjr.mall.bo.IProductSpecsBO;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.domain.Product;
import com.xnjr.mall.domain.ProductSpecs;
import com.xnjr.mall.enums.EGeneratePrefix;

@Service
public class ProductSpecsAOImpl implements IProductSpecsAO {

    @Autowired
    private IProductSpecsBO productSpecsBO;

    @Autowired
    private IProductBO productBO;

    @Override
    public String addProductSpecs(String productCode, String dkey,
            String dvalue, Integer orderNo) {
        Product product = productBO.getProduct(productCode);
        String code = OrderNoGenerater.generateM(EGeneratePrefix.PRODUCT_SPECS
            .getCode());
        ProductSpecs data = new ProductSpecs();

        data.setCode(code);
        data.setProductCode(productCode);
        data.setDkey(dkey);
        data.setDvalue(dvalue);
        data.setOrderNo(orderNo);

        data.setCompanyCode(product.getCompanyCode());
        data.setSystemCode(product.getSystemCode());
        productSpecsBO.saveProductSpecs(data);

        return code;
    }

    @Override
    public void editProductSpecs(String code, String dkey, String dvalue,
            Integer orderNo) {
        ProductSpecs data = new ProductSpecs();
        data.setCode(code);
        data.setDkey(dkey);
        data.setDvalue(dvalue);
        data.setOrderNo(orderNo);
        productSpecsBO.refreshProductSpecs(data);
    }

    @Override
    public void dropProductSpecs(String code) {
        productSpecsBO.removeProductSpecs(code);
    }

    @Override
    public ProductSpecs getProductSpecs(String code) {
        return productSpecsBO.getProductSpecs(code);
    }

    @Override
    public List<ProductSpecs> queryProductSpecsList(ProductSpecs condition) {
        return productSpecsBO.queryProductSpecsList(condition);
    }

}
