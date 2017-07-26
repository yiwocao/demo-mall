package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.dto.req.XN808200Req;
import com.xnjr.mall.dto.req.XN808201Req;
import com.xnjr.mall.dto.req.XN808203Req;
import com.xnjr.mall.dto.req.XN808204Req;
import com.xnjr.mall.dto.req.XN808208Req;
import com.xnjr.mall.dto.res.XN808219Res;

public interface IStoreAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addStoreOss(XN808200Req req);

    public void editStoreOss(XN808208Req req);

    public String addStoreFront(XN808201Req req);

    public void editStoreFront(XN808203Req req);

    public void checkStore(String code, String checkResult, String checkUser,
            String remark);

    public void putOn(XN808204Req req);

    public void putOff(String code, String updater, String remark);

    public void closeOpen(String code);

    public void upLevel(String code);

    public Paginable<Store> queryStorePageOss(int start, int limit,
            Store condition);

    public Paginable<Store> queryStorePageFront(int start, int limit,
            Store condition);

    public Store getStoreOss(String code);

    public Store getStoreFront(String code, String fromUser);

    public List<XN808219Res> getMyStore(String userId);

    public int editStoreDefault(String storeCode,String isDefault);
}
