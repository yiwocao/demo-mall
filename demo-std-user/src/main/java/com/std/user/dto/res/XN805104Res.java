package com.std.user.dto.res;

public class XN805104Res {

    // 记录编号
    private String code;

    // 签到金额
    private Long amount;

    public XN805104Res() {

    }

    public XN805104Res(String code, Long amount) {
        this.code = code;
        this.amount = amount;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }
}
