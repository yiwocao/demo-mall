package com.xnjr.mall.dao;

import com.xnjr.mall.dao.base.IBaseDAO;
import com.xnjr.mall.domain.Banner;

//dao层 
public interface IBannerDAO extends IBaseDAO<Banner> {
    String NAMESPACE = IBannerDAO.class.getName().concat(".");

    public int updateByGlobal(Banner data);

    public int updateByLocal(Banner data);
    
    
}
