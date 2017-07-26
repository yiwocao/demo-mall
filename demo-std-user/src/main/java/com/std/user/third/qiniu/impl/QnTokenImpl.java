/**
 * @Title uploadTokenImpl.java 
 * @Package com.std.user.third.qiniu 
 * @Description 
 * @author xieyj  
 * @date 2016年12月16日 下午1:25:24 
 * @version V1.0   
 */
package com.std.user.third.qiniu.impl;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qiniu.util.Auth;
import com.std.user.bo.ICPasswordBO;
import com.std.user.enums.ECPwdType;
import com.std.user.exception.BizException;

/** 
 * 七牛token处理
 * @author: xieyj 
 * @since: 2016年12月16日 下午1:25:24 
 * @history:
 */
@Component
public class QnTokenImpl {
    @Autowired
    protected ICPasswordBO cPasswordBO;

    // 简单上传，使用默认策略，只需要设置上传的空间名就可以了
    public String getUploadToken(String systemCode) {
        Map<String, String> resultMap = cPasswordBO.queryCPasswordList(
            ECPwdType.QINIU.getCode(), null, systemCode);
        if (resultMap == null) {
            throw new BizException("xn000000", "七牛云图片参数异常");
        }
        String ACCESS_KEY = resultMap.get("ACCESS_KEY");
        String SECRET_KEY = resultMap.get("SECRET_KEY");
        // 存储空间名称
        String bucket = resultMap.get("bucket");
        if (StringUtils.isBlank(ACCESS_KEY) || StringUtils.isBlank(SECRET_KEY)
                || StringUtils.isBlank(bucket)) {
            throw new BizException("xn000000", "七牛云图片参数异常");
        }
        // 密钥配置
        Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);
        return auth.uploadToken(bucket);
    }
}
