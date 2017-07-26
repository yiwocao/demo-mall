/**
 * @Title XN808029Req.java 
 * @Package com.xnjr.mall.dto.req 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年4月6日 下午3:26:48 
 * @version V1.0   
 */
package com.xnjr.mall.dto.req;

/** 
 * @author: haiqingzheng 
 * @since: 2017年4月6日 下午3:26:48 
 * @history:
 */
public class XN808029Req extends APageReq {

    private static final long serialVersionUID = -6374419606879409502L;

    // 产品编号（必填）
    private String productCode;

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }
}
