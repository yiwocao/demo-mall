package com.xnjr.mall.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xnjr.mall.ao.ICategoryAO;
import com.xnjr.mall.bo.ICategoryBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.domain.Category;
import com.xnjr.mall.dto.req.XN808000Req;
import com.xnjr.mall.dto.req.XN808002Req;
import com.xnjr.mall.enums.ECategoryStatus;
import com.xnjr.mall.enums.EGeneratePrefix;
import com.xnjr.mall.exception.BizException;

@Service
public class CategoryAOImpl implements ICategoryAO {
    @Autowired
    ICategoryBO categoryBO;

    @Override
    public String addCategory(XN808000Req req) {
        Category data = new Category();
        String code = OrderNoGenerater.generateM(EGeneratePrefix.CATEGORY
            .getCode());
        data.setCode(code);
        data.setType(req.getType());
        data.setParentCode(req.getParentCode());
        data.setName(req.getName());
        data.setPic(req.getPic());
        data.setOrderNo(Integer.valueOf(req.getOrderNo()));
        data.setStatus(ECategoryStatus.TO_ON.getCode());
        data.setCompanyCode(req.getCompanyCode());
        data.setSystemCode(req.getSystemCode());
        categoryBO.saveCategory(data);
        return code;
    }

    @Override
    public void editCategory(XN808002Req req) {
        Category data = new Category();
        data.setCode(req.getCode());
        data.setType(req.getType());
        data.setParentCode(req.getParentCode());
        data.setName(req.getName());
        data.setPic(req.getPic());
        data.setOrderNo(Integer.valueOf(req.getOrderNo()));
        categoryBO.refreshCategory(data);
    }

    @Override
    public void putOn(String code) {
        Category category = categoryBO.getCategory(code);
        if (ECategoryStatus.ON.getCode().equals(category.getStatus())) {
            throw new BizException("xn000000", "已上架，不能再次上架");
        }
        categoryBO.putOn(code);

    }

    @Override
    public void putOff(String code) {
        Category category = categoryBO.getCategory(code);
        if (ECategoryStatus.ON.getCode().equals(category.getStatus())) {
            categoryBO.putOff(code);
        } else {
            throw new BizException("xn000000", "不是已上架状态，不能下架");
        }

    }

    @Override
    public Paginable<Category> queryCategoryPage(int start, int limit,
            Category condition) {
        return categoryBO.getPaginable(start, limit, condition);
    }

    @Override
    public List<Category> queryCategoryList(Category condition) {
        return categoryBO.queryCategoryList(condition);
    }

    @Override
    public Category getCategory(String code) {
        return categoryBO.getCategory(code);
    }

}
