package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.Category;

/**
 * @author: xieyj 
 * @since: 2016年11月17日 上午8:32:09 
 * @history:
 */
public interface ICategoryBO extends IPaginableBO<Category> {

    public void saveCategory(Category data);

    public int refreshCategory(Category data);

    public int putOn(String code);

    public int putOff(String code);

    public List<Category> queryCategoryList(Category condition);

    public Category getCategory(String code);

}
