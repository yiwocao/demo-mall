package com.xnjr.mall.dto.res;

public class XN808800Res {

    // 店铺数量
    private String storeNum;

    public XN808800Res() {
    }

    public XN808800Res(long storeNum) {
        this.storeNum = String.valueOf(storeNum);

    }

    public String getStoreNum() {
        return storeNum;
    }

    public void setStoreNum(String storeNum) {
        this.storeNum = storeNum;
    }

}
