package com.xnjr.mall.bo.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.dto.req.XN001102Req;
import com.xnjr.mall.dto.req.XN001301Req;
import com.xnjr.mall.dto.req.XN001350Req;
import com.xnjr.mall.dto.req.XN001400Req;
import com.xnjr.mall.dto.req.XN001403Req;
import com.xnjr.mall.dto.res.XN001102Res;
import com.xnjr.mall.dto.res.XN001400Res;
import com.xnjr.mall.dto.res.XN001403Res;
import com.xnjr.mall.dto.res.XNUserRes;
import com.xnjr.mall.enums.EBoolean;
import com.xnjr.mall.enums.ESysUser;
import com.xnjr.mall.enums.ESystemCode;
import com.xnjr.mall.enums.EUserKind;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.http.BizConnecter;
import com.xnjr.mall.http.JsonUtils;

/**
 * @author: xieyj 
 * @since: 2016年5月30日 上午9:28:30 
 * @history:
 */
@Component
public class UserBOImpl implements IUserBO {

    @Override
    public User getRemoteUser(String userId) {
        User user = null;
        if (StringUtils.isNotBlank(userId)) {
            XN001400Req req = new XN001400Req();
            req.setTokenId(userId);
            req.setUserId(userId);
            XN001400Res res = BizConnecter.getBizData("001400",
                JsonUtils.object2Json(req), XN001400Res.class);
            if (res == null) {
                throw new BizException("XN000000", "编号为" + userId + "的用户不存在");
            }
            user = new User();
            user.setUserId(res.getUserId());
            user.setLoginName(res.getLoginName());
            user.setNickname(res.getNickname());
            user.setPhoto(res.getPhoto());
            user.setMobile(res.getMobile());
            user.setOpenId(res.getOpenId());
            user.setIdentityFlag(res.getIdentityFlag());
            user.setUserReferee(res.getUserReferee());
        }
        return user;
    }

    @Override
    public User getPartner(String province, String city, String area,
            EUserKind kind) {
        if (StringUtils.isBlank(city) && StringUtils.isBlank(area)) {
            city = province;
            area = province;
        } else if (StringUtils.isBlank(area)) {
            area = city;
        }
        XN001403Req req = new XN001403Req();
        req.setProvince(province);
        req.setCity(city);
        req.setArea(area);
        req.setKind(kind.getCode());
        req.setSystemCode(ESystemCode.ZHPAY.getCode());
        req.setCompanyCode(ESystemCode.ZHPAY.getCode());
        XN001403Res result = null;
        String jsonStr = BizConnecter.getBizData("001403",
            JsonUtils.object2Json(req));
        Gson gson = new Gson();
        List<XN001403Res> list = gson.fromJson(jsonStr,
            new TypeToken<List<XN001403Res>>() {
            }.getType());
        User user = null;
        if (CollectionUtils.isNotEmpty(list)) {
            result = list.get(0);
            user = new User();
            user.setUserId(result.getUserId());
            user.setLoginName(result.getLoginName());
            user.setMobile(result.getMobile());
        }
        return user;
    }

    @Override
    public String isUserExist(String mobile, EUserKind kind, String systemCode) {
        String userId = null;
        XN001102Req req = new XN001102Req();
        req.setMobile(mobile);
        req.setKind(kind.getCode());
        req.setSystemCode(systemCode);
        XN001102Res res = BizConnecter.getBizData("001102",
            JsonUtils.object2Json(req), XN001102Res.class);
        if (res != null) {
            userId = res.getUserId();
        }
        return userId;
    }

    @Override
    public String doSaveBUser(String mobile, String userReferee,
            String updater, String systemCode, String companyCode) {
        XN001350Req req = new XN001350Req();
        req.setLoginName(mobile);
        req.setMobile(mobile);
        req.setUserReferee(userReferee);
        req.setUpdater(updater);
        req.setRemark("代注册商家");
        if (ESystemCode.ZHPAY.getCode().equals(systemCode)) {
            req.setIsRegHx(EBoolean.YES.getCode());
            // 正汇推荐人是店铺推荐人 用户推荐人置为空
            req.setUserReferee(null);
        }
        req.setSystemCode(systemCode);
        req.setCompanyCode(companyCode);
        XNUserRes res = BizConnecter.getBizData("001350",
            JsonUtils.object2Json(req), XNUserRes.class);
        return res.getUserId();
    }

    @Override
    public String doSaveCUser(String mobile, String loginPwd, String updater,
            String remark, String systemCode) {
        XN001301Req req = new XN001301Req();
        req.setMobile(mobile);
        req.setLoginPwd(loginPwd);
        req.setUpdater(updater);
        req.setUserReferee(ESysUser.SYS_USER_CAIGO.getCode());
        req.setRemark(remark);
        req.setCompanyCode(systemCode);
        req.setSystemCode(systemCode);
        XNUserRes res = BizConnecter.getBizData("001301",
            JsonUtils.object2Json(req), XNUserRes.class);
        return res.getUserId();
    }

    @Override
    public String getSystemUser(String systemCode) {
        if (ESystemCode.ZHPAY.getCode().equals(systemCode)) {
            return ESysUser.SYS_USER_ZHPAY.getCode();
        }
        if (ESystemCode.Caigo.getCode().equals(systemCode)) {
            return ESysUser.SYS_USER_CAIGO.getCode();
        }
        if (ESystemCode.CSW.getCode().equals(systemCode)) {
            return ESysUser.SYS_USER_CSW.getCode();
        }
        if (ESystemCode.PIPE.getCode().equals(systemCode)) {
            return ESysUser.SYS_USER_PIPE.getCode();
        }
        return null;
    }
}
