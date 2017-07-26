package com.std.user.third.wechat.impl;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;
import com.std.user.bo.ICPasswordBO;
import com.std.user.common.MD5Util;
import com.std.user.domain.CPassword;
import com.std.user.dto.res.XN807910Res;
import com.std.user.exception.BizException;
import com.std.user.util.HttpsUtil;
import com.std.user.util.SignUtil;

@Component
public class WechatTokenUtil {

    @Autowired
    protected ICPasswordBO cPasswordBO;

    private Map<String, String> map = new HashMap<>();

    public XN807910Res getSign(String systemCode, String companyCode, String url) {
        getMap(systemCode, companyCode);
        String prefixStr = systemCode + "." + companyCode;
        String jsapiTicket = map.get(prefixStr + ".jsapi_token");
        String timestamp = map.get(prefixStr + ".time");
        String nonceStr = createNonceStr();
        String sign = SignUtil.getSignature(jsapiTicket, timestamp, nonceStr,
            url);
        return new XN807910Res(map.get("appId"), timestamp, nonceStr, sign);
    }

    public Map<String, String> getMap(String systemCode, String companyCode) {

        String time = map.get(systemCode + "." + companyCode + ".time");
        String accessToken = map.get(systemCode + "." + companyCode
                + ".access_token");
        Long nowDate = new Date().getTime();
        if (accessToken != null && time != null
                && nowDate - Long.parseLong(time) < 3000 * 1000) {
            System.out.println("accessToken存在，且没有超时，返回单例");
        } else {
            System.out.println("accessToken超时，或者不存在，重新获取");
            map = getJsapiToken(systemCode, companyCode, map, nowDate);
        }

        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }

    public String getAccessToken(String systemCode, String companyCode) {
        String accessToken = null;

        return accessToken;
    }

    public static String createNonceStr() {
        Random random = new Random();
        return MD5Util.md5(String.valueOf(random.nextInt(1000)));
    }

    public Map<String, String> getJsapiToken(String systemCode,
            String companyCode, Map<String, String> map, Long nowDate) {
        String jsapi_ticket = null;
        String appId = "";
        String appSecret = "";
        CPassword condition = new CPassword();
        condition.setType("3");
        condition.setAccount("ACCESS_KEY");
        condition.setCompanyCode(companyCode);
        condition.setSystemCode(systemCode);
        List<CPassword> result = cPasswordBO.queryCPasswordList(condition);
        if (CollectionUtils.isEmpty(result)) {
            throw new BizException("XN000000", "微信公众号appId配置获取失败，请检查配置");
        }
        appId = result.get(0).getPassword();
        condition.setAccount("SECRET_KEY");
        result = cPasswordBO.queryCPasswordList(condition);
        if (CollectionUtils.isEmpty(result)) {
            throw new BizException("XN000000", "微信公众号appSecret配置获取失败，请检查配置");
        }
        appSecret = result.get(0).getPassword();
        String requestUrl = "https://api.weixin.qq.com/cgi-bin/token?";
        String params = "grant_type=client_credential&appid=" + appId
                + "&secret=" + appSecret + "";
        String result1;
        try {
            result1 = new String(HttpsUtil.post(requestUrl, params, "utf-8"));
            String access_token = JSONObject.parseObject(result1).getString(
                "access_token");
            requestUrl = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?";
            params = "access_token=" + access_token + "&type=jsapi";
            result1 = new String(HttpsUtil.post(requestUrl, params, "utf-8"));
            jsapi_ticket = JSONObject.parseObject(result1).getString("ticket");

            map.put(systemCode + "." + companyCode + ".time", nowDate + "");
            map.put(systemCode + "." + companyCode + ".access_token",
                access_token);
            map.put(systemCode + "." + companyCode + ".jsapi_token",
                jsapi_ticket);
            map.put("appId", appId);
        } catch (KeyManagementException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return map;
    }
}
