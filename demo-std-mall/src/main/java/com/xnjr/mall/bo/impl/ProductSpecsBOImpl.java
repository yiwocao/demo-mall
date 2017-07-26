package com.xnjr.mall.bo.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.IProductSpecsBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.dao.IProductSpecsDAO;
import com.xnjr.mall.domain.ProductSpecs;
import com.xnjr.mall.exception.BizException;

@Component
public class ProductSpecsBOImpl extends PaginableBOImpl<ProductSpecs> implements
        IProductSpecsBO {

    @Autowired
    private IProductSpecsDAO productSpecsDAO;

    @Override
    public boolean isProductSpecsExist(String code) {
        ProductSpecs condition = new ProductSpecs();
        condition.setCode(code);
        if (productSpecsDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveProductSpecs(ProductSpecs data) {
        String code = null;
        if (data != null && StringUtils.isNotBlank(data.getCode())) {
            productSpecsDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeProductSpecs(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            ProductSpecs data = new ProductSpecs();
            data.setCode(code);
            count = productSpecsDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshProductSpecs(ProductSpecs data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            count = productSpecsDAO.update(data);
        }
        return count;
    }

    @Override
    public List<ProductSpecs> queryProductSpecsList(ProductSpecs condition) {
        return productSpecsDAO.selectList(condition);
    }

    @Override
    public ProductSpecs getProductSpecs(String code) {
        ProductSpecs data = null;
        if (StringUtils.isNotBlank(code)) {
            ProductSpecs condition = new ProductSpecs();
            condition.setCode(code);
            data = productSpecsDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "记录不存在");
            }
        }
        return data;
    }

    @Override
    public List<ProductSpecs> queryProductSpecsList(String productCode) {
        ProductSpecs condition = new ProductSpecs();
        condition.setProductCode(productCode);
        return productSpecsDAO.selectList(condition);
    }
}
