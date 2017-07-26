package com.std.user.dto.req;

public class XN805331Req {
    // 状态(选填)
    private String status;

    // 样式(选填)
    private String style;

    // 扫描人(选填)
    private String scanner;

    // 扫描人手机(选填)
    private String scannerMobile;

    // 公司编号(选填)
    private String companyCode;

    // 系统编号(必填)
    private String systemCode;

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getScannerMobile() {
        return scannerMobile;
    }

    public void setScannerMobile(String scannerMobile) {
        this.scannerMobile = scannerMobile;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getScanner() {
        return scanner;
    }

    public void setScanner(String scanner) {
        this.scanner = scanner;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }
}
