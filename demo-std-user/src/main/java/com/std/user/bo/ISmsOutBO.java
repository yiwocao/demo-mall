package com.std.user.bo;

public interface ISmsOutBO {
    /**
     * 发送验证码
     * @param mobile
     * @param bizType
     * @param systemCode 
     * @create: 2017年2月13日 下午3:02:02 xieyj
     * @history:
     */
    public void sendCaptcha(String mobile, String bizType, String systemCode);

    /**
     * 发送验证码
     * @param mobile
     * @param bizType
     * @param companyCode
     * @param systemCode 
     * @create: 2017年2月13日 下午3:02:02 xieyj
     * @history:
     */
    public void sendCaptcha(String mobile, String bizType, String companyCode,
            String systemCode);

    /**
     * 验证用户验证码是否正确
     * @param mobile
     * @param captcha
     * @param bizType
     * @param systemCode 
     * @create: 2017年2月13日 下午3:02:30 xieyj
     * @history:
     */
    public void checkCaptcha(String mobile, String captcha, String bizType,
            String systemCode);

    /**
     * 验证用户验证码是否正确
     * @param mobile
     * @param captcha
     * @param bizType
     * @param companyCode
     * @param systemCode 
     * @create: 2017年2月13日 下午3:02:30 xieyj
     * @history:
     */
    public void checkCaptcha(String mobile, String captcha, String bizType,
            String companyCode, String systemCode);

    /**
     * 发送指定内容短信(系统)
     * @param mobile
     * @param content
     * @param bizType
     * @param companyCode
     * @param systemCode 
     * @create: 2017年2月13日 下午3:03:24 xieyj
     * @history:
     */
    public void sendSmsOut(String mobile, String content, String bizType,
            String systemCode);

    /**
     * 发送指定内容短信(系统和公司)
     * @param mobile
     * @param content
     * @param bizType
     * @param companyCode
     * @param systemCode 
     * @create: 2017年2月13日 下午3:03:50 xieyj
     * @history:
     */
    public void sendSmsOut(String mobile, String content, String bizType,
            String companyCode, String systemCode);
}
