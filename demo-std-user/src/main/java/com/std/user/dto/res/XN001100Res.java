package com.std.user.dto.res;

public class XN001100Res {
    // 是否成功
    private boolean isSuccess;

    public XN001100Res() {
    };

    public XN001100Res(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public boolean getIsSuccess() {
        return isSuccess;
    }

    public void setIsSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }
}
