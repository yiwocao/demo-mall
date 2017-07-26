/**
 * @Title UserReq.java 
 * @Package com.std.user.third.hx.domain 
 * @Description 
 * @author xieyj  
 * @date 2016年12月16日 上午10:14:15 
 * @version V1.0   
 */
package com.std.user.third.hx.domain;

/** 
 * 环信用户入参
 * @author: xieyj 
 * @since: 2016年12月16日 上午10:14:15 
 * @history:
 */
public class UserReq {

    // 用户名
    private String username;

    // 密码
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
