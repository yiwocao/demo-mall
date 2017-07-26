package com.std.user.bo;

import com.std.user.dto.res.XN798011Res;
import com.std.user.dto.res.XN798012Res;

public interface IIdentifyBO {
    /**
     * 三方实名认证
     * @param userId
     * @param realName
     * @param idKind
     * @param idNo
     * @return 
     * @create: 2015年10月21日 下午6:12:32 myb858
     * @history:
     */
    public void doIdentify(String systemCode, String companyCode,
            String userId, String realName, String idKind, String idNo);

    /**
     * 四要素三方实名认证
     * @param userId
     * @param realName
     * @param idKind
     * @param idNo
     * @param cardNo
     * @param bindMobile 
     * @create: 2017年1月4日 上午10:48:03 xieyj
     * @history:
     */
    public void doFourIdentify(String userId, String realName, String idKind,
            String idNo, String cardNo, String bindMobile);

    public XN798011Res doZhimaVerify(String systemCode, String companyCode,
            String userId, String idKind, String idNo, String realName);

    public XN798012Res doZhimaQuery(String systemCode, String companyCode,
            String bizNo);

}
