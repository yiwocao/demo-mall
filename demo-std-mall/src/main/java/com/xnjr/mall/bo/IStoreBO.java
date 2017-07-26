package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Store;

/** 
 * 商家BO
 * @author: zuixian 
 * @since: 2016年9月20日 下午1:03:46 
 * @history:
 */
public interface IStoreBO {

    public void saveStoreOss(Store data);

    public int refreshStoreOss(Store data);

    public void saveStoreFront(Store data);

    public int refreshStoreFront(Store data);

    public void checkStore(Store dbStore, String checkResult, String checkUser,
            String remark);

    public void putOn(Store dbStore);

    public void putOff(Store dbStore);

    public void openClose(Store dbStore);

    public void upLevel(Store dbStore);

    public void refreshTotalRmbNum(Store dbStore, Integer changeNum);

    public void refreshTotalJfNum(Store dbStore, Integer changeNum);

    public void refreshTotalDzNum(Store dbStore, Integer changeNum);

    public void refreshTotalScNum(Store dbStore, Integer changeNum);

    public Paginable<Store> queryFrontPage(int start, int pageSize,
            Store condition);

    public Paginable<Store> queryOssPage(int start, int pageSize,
            Store condition);

    public Store getStore(String storeCode);

    public List<Store> queryStoreList(Store data);

    public Store getStoreByUser(String userId);

    public String isUserRefereeExist(String userReferee, String systemCode);

    /**
     * 一个人只能有一家店铺
     * @param bUser
     * @param mobile 
     * @create: 2017年3月27日 下午3:15:36 xieyj
     * @history:
     */
    public void checkStoreByUser(String bUser, String mobile);
    
    public int refreshStoreDefaultStatus(Store data);

}
