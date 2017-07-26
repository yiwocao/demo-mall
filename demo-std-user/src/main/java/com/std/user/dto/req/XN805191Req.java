/**
 * @Title XN805191Req.java 
 * @Package com.std.user.dto.req 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年2月24日 下午5:55:42 
 * @version V1.0   
 */
package com.std.user.dto.req;

/** 
 * @author: haiqingzheng 
 * @since: 2017年2月24日 下午5:55:42 
 * @history:
 */
public class XN805191Req {
    // userId(必填)
    private String userId;

    // 证件类型(必填)
    private String idKind;

    // 身份号(必填)
    private String idNo;

    // 真实姓名(必填)
    private String realName;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getIdKind() {
        return idKind;
    }

    public void setIdKind(String idKind) {
        this.idKind = idKind;
    }

    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }
}
