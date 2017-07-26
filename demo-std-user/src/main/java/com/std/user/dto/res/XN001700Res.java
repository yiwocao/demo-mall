package com.std.user.dto.res;

public class XN001700Res {
    // 上传凭证
    private String uploadToken;

    public XN001700Res() {
    }

    public XN001700Res(String uploadToken) {
        this.uploadToken = uploadToken;
    }

    public String getUploadToken() {
        return uploadToken;
    }

    public void setUploadToken(String uploadToken) {
        this.uploadToken = uploadToken;
    }
}
