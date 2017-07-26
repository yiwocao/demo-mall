/**
 * @Title XN802317Res.java 
 * @Package com.std.account.dto.res 
 * @Description 
 * @author xieyj  
 * @date 2016年12月10日 上午10:30:06 
 * @version V1.0   
 */
package com.std.user.dto.res;

/** 
 * @author: xieyj 
 * @since: 2016年12月10日 上午10:30:06 
 * @history:
 */
public class XN802317Res {
    private String code;

    private String amount;

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public XN802317Res() {
    }

    public XN802317Res(String code) {
        this.code = code;
    }

    public XN802317Res(String code, String amount) {
        this.code = code;
        this.amount = amount;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
