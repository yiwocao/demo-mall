/**
 * @Title XN798012Res.java 
 * @Package com.std.certi.dto.res 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年2月24日 下午5:42:00 
 * @version V1.0   
 */
package com.std.user.dto.res;

/** 
 * @author: haiqingzheng 
 * @since: 2017年2月24日 下午5:42:00 
 * @history:
 */
public class XN798012Res {
    // 是否成功
    private boolean isSuccess;

    // 真实姓名
    private String realName;

    // 证件类型
    private String idKind;

    // 证件号码
    private String idNo;

    public boolean isSuccess() {
        return isSuccess;
    }

    public void setSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
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
}
