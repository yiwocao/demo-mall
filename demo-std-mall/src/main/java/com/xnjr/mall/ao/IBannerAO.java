package com.xnjr.mall.ao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Banner;

@Component
public interface IBannerAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public void editBannerGlobal(String code, String name, String url,
            String pic, String location, String orderNo, String belong,
            String remark);

    public void editBannerLocal(String code, String name, String url,
            String pic, String location, String orderNo, String belong,
            String companyCode, String remark);

    public Paginable<Banner> queryBannerPage(int start, int limit,
            Banner condition);
    
    public Paginable<Banner> queryMallBannerPage(int start, int limit,
            Banner condition);

    public List<Banner> queryBannerList(String companyCode, String location);

    public Banner getBanner(String code);
    
    public void saveBanner(Banner banner);
    
    public void editBanner(Banner banner);
    
    
    public List<Banner> queryBannerList(Banner banner);

}
