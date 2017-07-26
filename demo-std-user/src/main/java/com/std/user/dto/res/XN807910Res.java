/**
 * @Title XN807910Res.java 
 * @Package com.std.user.dto.res 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年3月30日 下午3:53:44 
 * @version V1.0   
 */
package com.std.user.dto.res;

/** 
 * @author: haiqingzheng 
 * @since: 2017年3月30日 下午3:53:44 
 * @history:
 */
public class XN807910Res {
    // 公众号的唯一标识
    private String appId;

    // 生成签名的时间戳
    private String timestamp;

    // 生成签名的随机串
    private String nonceStr;

    // 签名
    private String signature;

    public XN807910Res() {
    }

    public XN807910Res(String appId, String timestamp, String nonceStr,
            String signature) {
        this.appId = appId;
        this.timestamp = timestamp;
        this.nonceStr = nonceStr;
        this.signature = signature;
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    public String getNonceStr() {
        return nonceStr;
    }

    public void setNonceStr(String nonceStr) {
        this.nonceStr = nonceStr;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }
}
