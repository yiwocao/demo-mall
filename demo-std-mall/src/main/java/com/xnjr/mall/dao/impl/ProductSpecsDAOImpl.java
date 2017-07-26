package com.xnjr.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xnjr.mall.dao.IProductSpecsDAO;
import com.xnjr.mall.dao.base.support.AMybatisTemplate;
import com.xnjr.mall.domain.ProductSpecs;

@Repository("productSpecsDAOImpl")
public class ProductSpecsDAOImpl extends AMybatisTemplate implements
        IProductSpecsDAO {

    @Override
    public int insert(ProductSpecs data) {
        return super.insert(NAMESPACE.concat("insert_productSpecs"), data);
    }

    @Override
    public int delete(ProductSpecs data) {
        return super.delete(NAMESPACE.concat("delete_productSpecs"), data);
    }

    @Override
    public ProductSpecs select(ProductSpecs condition) {
        return super.select(NAMESPACE.concat("select_productSpecs"), condition,
            ProductSpecs.class);
    }

    @Override
    public Long selectTotalCount(ProductSpecs condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_productSpecs_count"), condition);
    }

    @Override
    public List<ProductSpecs> selectList(ProductSpecs condition) {
        return super.selectList(NAMESPACE.concat("select_productSpecs"),
            condition, ProductSpecs.class);
    }

    @Override
    public List<ProductSpecs> selectList(ProductSpecs condition, int start,
            int count) {
        return super.selectList(NAMESPACE.concat("select_productSpecs"), start,
            count, condition, ProductSpecs.class);
    }

    @Override
    public int update(ProductSpecs data) {
        return super.update(NAMESPACE.concat("update_productSpecs"), data);
    }

}
