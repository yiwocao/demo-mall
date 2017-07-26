package com.std.user.api.converter;

import com.std.user.domain.CPassword;
import com.std.user.dto.req.XN806020Req;
import com.std.user.dto.req.XN806022Req;

public class CPasswordConverter {

    // 新增密码记录
    public static CPassword converter(XN806020Req req) {
        CPassword result = new CPassword();
        result.setType(req.getType());
        result.setAccount(req.getAccount());
        result.setPassword(req.getPassword());
        result.setRemark(req.getRemark());
        result.setCompanyCode(req.getCompanyCode());
        return result;
    }

    // 修改密码记录
    public static CPassword converter(XN806022Req req) {
        CPassword result = new CPassword();
        result.setCode(req.getCode());
        result.setType(req.getType());
        result.setAccount(req.getAccount());
        result.setPassword(req.getPassword());
        result.setRemark(req.getRemark());
        result.setCompanyCode(req.getCompanyCode());
        return result;
    }
}
