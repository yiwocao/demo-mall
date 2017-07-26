package com.std.user.bo.impl;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.std.user.bo.IIdentifyBO;
import com.std.user.dto.req.XN798001Req;
import com.std.user.dto.req.XN798006Req;
import com.std.user.dto.req.XN798011Req;
import com.std.user.dto.req.XN798012Req;
import com.std.user.dto.res.XN798001Res;
import com.std.user.dto.res.XN798006Res;
import com.std.user.dto.res.XN798011Res;
import com.std.user.dto.res.XN798012Res;
import com.std.user.http.BizConnecter;
import com.std.user.http.JsonUtils;

@Component
public class IdentifyBOImpl implements IIdentifyBO {
    static Logger logger = Logger.getLogger(IdentifyBOImpl.class);

    @Override
    public void doIdentify(String systemCode, String companyCode,
            String userId, String realName, String idKind, String idNo) {
        if (StringUtils.isNotBlank(realName)) {
            // try {
            XN798001Req req = new XN798001Req();
            req.setSystemCode(systemCode);
            req.setCompanyCode(companyCode);
            req.setUserId(userId);
            req.setRealName(realName);
            req.setIdKind(idKind);
            req.setIdNo(idNo);
            req.setRemark("二要素实名认证");
            BizConnecter.getBizData("798001", JsonUtils.object2Json(req),
                XN798001Res.class);
            // } catch (Exception e) {
            // logger.error("调用实名认证服务异常");
            // }
        }
    }

    /** 
     * @see com.std.user.bo.IIdentifyBO#doFourIdentify(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public void doFourIdentify(String userId, String realName, String idKind,
            String idNo, String cardNo, String bindMobile) {
        if (StringUtils.isNotBlank(realName)) {
            // try {
            XN798006Req req = new XN798006Req();
            req.setSystemId("3");
            req.setUserId(userId);
            req.setRealName(realName);
            req.setIdKind(idKind);
            req.setIdNo(idNo);
            req.setCardNo(cardNo);
            req.setBindMobile(bindMobile);
            req.setRemark("来自正汇钱包实名认证");
            BizConnecter.getBizData("798006", JsonUtils.object2Json(req),
                XN798006Res.class);
            // } catch (Exception e) {
            // logger.error("调用实名认证服务异常");
            // }
        }

    }

    @Override
    public XN798011Res doZhimaVerify(String systemCode, String companyCode,
            String userId, String idKind, String idNo, String realName) {
        XN798011Req req = new XN798011Req();
        req.setSystemCode(systemCode);
        req.setCompanyCode(companyCode);
        req.setUserId(userId);
        req.setRealName(realName);
        req.setIdKind(idKind);
        req.setIdNo(idNo);
        req.setRemark("芝麻人脸识别认证");
        return BizConnecter.getBizData("798011", JsonUtils.object2Json(req),
            XN798011Res.class);
    }

    @Override
    public XN798012Res doZhimaQuery(String systemCode, String companyCode,
            String bizNo) {
        XN798012Req req = new XN798012Req();
        req.setSystemCode(systemCode);
        req.setCompanyCode(companyCode);
        req.setBizNo(bizNo);
        return BizConnecter.getBizData("798012", JsonUtils.object2Json(req),
            XN798012Res.class);
    }
}
