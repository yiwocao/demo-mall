package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Category;
import com.xnjr.mall.dto.req.XN808000Req;
import com.xnjr.mall.dto.req.XN808002Req;

/**
 * @author: xieyj 
 * @since: 2016年11月16日 下午4:37:11 
 * @history:
 */
public interface ICategoryAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addCategory(XN808000Req req);

    public void editCategory(XN808002Req req);

    public Paginable<Category> queryCategoryPage(int start, int limit,
            Category condition);

    public List<Category> queryCategoryList(Category condition);

    public Category getCategory(String code);

    public void putOn(String code);

    public void putOff(String code);

}
