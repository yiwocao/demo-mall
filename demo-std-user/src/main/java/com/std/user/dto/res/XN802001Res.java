package com.std.user.dto.res;

public class XN802001Res {

    // 账号
    private String accountNumber;

    // 注册送积分
    private String amount;

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public XN802001Res() {
    }

    public XN802001Res(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public XN802001Res(String accountNumber, String amount) {
        this.accountNumber = accountNumber;
        this.amount = amount;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }
}
