package com.xnjr.mall.dto.res;

public class XN808420Res {
    private Long userStockNum;

    private Long storeStockNum;

    public XN808420Res() {
    };

    public XN808420Res(Long userStockNum, Long storeStockNum) {
        this.userStockNum = userStockNum;
        this.storeStockNum = storeStockNum;
    };

    public Long getUserStockNum() {
        return userStockNum;
    }

    public void setUserStockNum(Long userStockNum) {
        this.userStockNum = userStockNum;
    }

    public Long getStoreStockNum() {
        return storeStockNum;
    }

    public void setStoreStockNum(Long storeStockNum) {
        this.storeStockNum = storeStockNum;
    }

}
