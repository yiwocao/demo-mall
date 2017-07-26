package com.xnjr.mall.dto.req;

import com.xnjr.mall.domain.CommitOrderPOJO;

/**
 * 立即下单
 * @author: xieyj 
 * @since: 2016年5月23日 上午8:46:53 
 * @history:
 */
public class XN808050Req {

    // 商品编号（必填）
    private String productCode;

    // 数量（必填）
    private String quantity;

    // 向谁提货(选填)
    private String toUser;
    
    //店铺编号
    private String storeCode;

    // 下单个人信息(必填)
    private CommitOrderPOJO pojo;

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getToUser() {
        return toUser;
    }

    public void setToUser(String toUser) {
        this.toUser = toUser;
    }

    public CommitOrderPOJO getPojo() {
        return pojo;
    }

    public void setPojo(CommitOrderPOJO pojo) {
        this.pojo = pojo;
    }

	public String getStoreCode() {
		return storeCode;
	}

	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
    
    

}
