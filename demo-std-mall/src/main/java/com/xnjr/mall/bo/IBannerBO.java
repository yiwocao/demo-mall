package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.Banner;

public interface IBannerBO extends IPaginableBO<Banner> {

    public boolean isBannerExist(String code);

    public String saveBanner(String name, String url, String pic,
            String location, String orderNo, String belong, String companyCode,
            String remark);
    
    public int saveBanner(Banner banner);

    public void refreshBannerByGlobal(String code, String name, String url,
            String pic, String location, String orderNo, String belong,
            String remark);

    public void refreshBannerByLocal(String code, String name, String url,
            String pic, String location, String orderNo, String belong,
            String companyCode, String remark);

    public int removeBanner(String code);

    public List<Banner> queryBannerList(Banner condition);

    public List<Banner> queryBannerLocationList(String companyCode,
            String location);

    public List<Banner> queryBannerList(String companyCode, String orderNo);

    public Banner getBanner(String code);

    public List<Banner> queryBannerList(Banner condition, int start, int limit);
    
    public int refreshBanner(Banner banner);

}
