package com.std.user.api.converter;

import com.std.user.core.StringValidater;
import com.std.user.domain.Company;
import com.std.user.dto.req.XN806000Req;
import com.std.user.dto.req.XN806004Req;
import com.std.user.dto.req.XN806005Req;
import com.std.user.dto.req.XN806013Req;
import com.std.user.dto.req.XN806014Req;
import com.std.user.dto.req.XN806017Req;

public class CompanyConverter {

    // 新增公司
    public static Company converter(XN806000Req req) {
        Company result = new Company();
        result.setType(req.getType());
        result.setName(req.getName());
        result.setAbbrName(req.getAbbrName());
        result.setGsyyzzh(req.getGsyyzzh());
        result.setDomain(req.getDomain());
        result.setLogo(req.getLogo());
        result.setIcon(req.getIcon());
        result.setSlogan(req.getSlogan());
        result.setCorporation(req.getCorporation());
        result.setQrCode(req.getQrCode());
        result.setProvince(req.getProvince());
        result.setCity(req.getCity());
        result.setArea(req.getArea());
        result.setAddress(req.getAddress());
        result.setLongitude(req.getLongitude());
        result.setLatitude(req.getLatitude());
        result.setCopyright(req.getCopyright());
        result.setDescription(req.getDescription());
        result.setScale(req.getScale());
        result.setContacts(req.getContacts());
        result.setMobile(req.getMobile());
        result.setFax(req.getFax());
        result.setEmail(req.getEmail());
        result.setQq(req.getQq());
        result.setWeChat(req.getWeChat());
        result.setUserId(req.getUserId());
        result.setLocation(req.getLocation());
        result.setOrderNo(StringValidater.toInteger(req.getOrderNo()));
        result.setLoginName(req.getLoginName());
        result.setPassword(req.getPassword());
        result.setUpdater(req.getUpdater());
        result.setRemark(req.getRemark());
        result.setIsNeedInitPwd(req.getIsNeedInitPwd());
        result.setSystemCode(req.getSystemCode());
        return result;
    }

    // 新增官网公司
    public static Company converter(XN806005Req req) {
        Company result = new Company();
        result.setType(req.getType());
        result.setName(req.getName());
        result.setAbbrName(req.getAbbrName());
        result.setGsyyzzh(req.getGsyyzzh());
        result.setDomain(req.getDomain());
        result.setLogo(req.getLogo());
        result.setIcon(req.getIcon());
        result.setSlogan(req.getSlogan());
        result.setCorporation(req.getCorporation());
        result.setQrCode(req.getQrCode());
        result.setProvince(req.getProvince());
        result.setCity(req.getCity());
        result.setArea(req.getArea());
        result.setAddress(req.getAddress());
        result.setLongitude(req.getLongitude());
        result.setLatitude(req.getLatitude());
        result.setCopyright(req.getCopyright());
        result.setDescription(req.getDescription());
        result.setScale(req.getScale());
        result.setContacts(req.getContacts());
        result.setMobile(req.getMobile());
        result.setFax(req.getFax());
        result.setEmail(req.getEmail());
        result.setQq(req.getQq());
        result.setWeChat(req.getWeChat());
        result.setUserId(req.getUserId());
        result.setLocation(req.getLocation());
        result.setOrderNo(StringValidater.toInteger(req.getOrderNo()));
        result.setUpdater(req.getUpdater());
        result.setRemark(req.getRemark());
        result.setSystemCode(req.getSystemCode());
        return result;
    }

    // 修改公司信息
    public static Company converter(XN806004Req req) {
        Company result = new Company();
        result.setCode(req.getCode());
        result.setType(req.getType());
        result.setName(req.getName());
        result.setAbbrName(req.getAbbrName());
        result.setGsyyzzh(req.getGsyyzzh());
        result.setDomain(req.getDomain());
        result.setLogo(req.getLogo());
        result.setIcon(req.getIcon());
        result.setSlogan(req.getSlogan());
        result.setCorporation(req.getCorporation());
        result.setQrCode(req.getQrCode());
        result.setProvince(req.getProvince());
        result.setCity(req.getCity());
        result.setArea(req.getArea());
        result.setAddress(req.getAddress());
        result.setLongitude(req.getLongitude());
        result.setLatitude(req.getLatitude());
        result.setCopyright(req.getCopyright());
        result.setDescription(req.getDescription());
        result.setScale(req.getScale());
        result.setContacts(req.getContacts());
        result.setMobile(req.getMobile());
        result.setFax(req.getFax());
        result.setEmail(req.getEmail());
        result.setQq(req.getQq());
        result.setWeChat(req.getWeChat());
        result.setUserId(req.getUserId());
        result.setLocation(req.getLocation());
        result.setOrderNo(StringValidater.toInteger(req.getOrderNo()));
        result.setIsDefault(req.getIsDefault());
        result.setUpdater(req.getUpdater());
        result.setRemark(req.getRemark());
        result.setSystemCode(req.getSystemCode());
        return result;
    }

    // 列表查询公司信息
    public static Company converter(XN806013Req req) {
        Company result = new Company();
        result.setCode(req.getCode());
        result.setType(req.getType());
        result.setNameForQuery(req.getName());
        result.setAbbrNameForQuery(req.getAbbrName());
        result.setProvinceForQuery(req.getProvince());
        result.setCityForQuery(req.getCity());
        result.setAreaForQuery(req.getArea());
        result.setUserId(req.getUserId());
        result.setLocation(req.getLocation());
        result.setIsDefault(req.getIsDefault());
        result.setIsHot(req.getIsHot());
        result.setStatus(req.getStatus());
        result.setSystemCode(req.getSystemCode());
        return result;
    }

    // 列表查询公司信息
    public static Company converter(XN806017Req req) {
        Company result = new Company();
        result.setCode(req.getCode());
        result.setType(req.getType());
        result.setNameForQuery(req.getName());
        result.setAbbrNameForQuery(req.getAbbrName());
        result.setProvinceForQuery(req.getProvince());
        result.setCityForQuery(req.getCity());
        result.setAreaForQuery(req.getArea());
        result.setUserId(req.getUserId());
        result.setLocation(req.getLocation());
        result.setIsDefault(req.getIsDefault());
        result.setIsHot(req.getIsHot());
        result.setStatus(req.getStatus());
        return result;
    }

    // 分页查询公司信息
    public static Company converter(XN806014Req req) {
        Company result = new Company();
        result.setCode(req.getCode());
        result.setType(req.getType());
        result.setNameForQuery(req.getName());
        result.setAbbrNameForQuery(req.getAbbrName());
        result.setProvinceForQuery(req.getProvince());
        result.setCityForQuery(req.getCity());
        result.setAreaForQuery(req.getArea());
        result.setUserId(req.getUserId());
        result.setLocation(req.getLocation());
        result.setIsDefault(req.getIsDefault());
        result.setIsHot(req.getIsHot());
        result.setStatus(req.getStatus());
        result.setSystemCode(req.getSystemCode());
        return result;
    }
}
