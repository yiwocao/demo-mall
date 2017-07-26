package com.std.user.dto.res;

public class XN001200Res {
    // 是否成功
    private boolean isSuccess;

    public XN001200Res() {
    };

    public XN001200Res(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public boolean getIsSuccess() {
        return isSuccess;
    }

    public void setIsSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }
}
