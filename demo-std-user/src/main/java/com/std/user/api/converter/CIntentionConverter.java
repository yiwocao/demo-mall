package com.std.user.api.converter;

import com.std.user.domain.CIntention;
import com.std.user.dto.req.XN806060Req;
import com.std.user.dto.req.XN806061Req;
import com.std.user.dto.req.XN806070Req;
import com.std.user.dto.req.XN806071Req;

public class CIntentionConverter {

    // 新增合作意向
    public static CIntention converter(XN806060Req req) {
        CIntention result = new CIntention();
        result.setFromCompany(req.getFromCompany());
        result.setFromPerson(req.getFromPerson());
        result.setFromContact(req.getFromContact());
        result.setContent(req.getContent());
        result.setCompanyCode(req.getCompanyCode());
        result.setSystemCode(req.getSystemCode());
        return result;
    }

    // 修改合作意向状态
    public static CIntention converter(XN806061Req req) {
        CIntention result = new CIntention();
        result.setCode(req.getCode());
        result.setStatus(req.getStatus());
        result.setUpdater(req.getUpdater());
        result.setRemark(req.getRemark());
        return result;
    }

    // 分页查询合作意向
    public static CIntention converter(XN806070Req req) {
        CIntention result = new CIntention();
        result.setFromCompany(req.getFromCompany());
        result.setFromPerson(req.getFromPerson());
        result.setFromContact(req.getFromContact());
        result.setCompanyCode(req.getCompanyCode());
        result.setStatus(req.getStatus());
        result.setUpdater(req.getUpdater());
        result.setSystemCode(req.getSystemCode());
        return result;
    }

    // 列表查询合作意向
    public static CIntention converter(XN806071Req req) {
        CIntention result = new CIntention();
        result.setFromCompany(req.getFromCompany());
        result.setFromPerson(req.getFromPerson());
        result.setFromContact(req.getFromContact());
        result.setCompanyCode(req.getCompanyCode());
        result.setStatus(req.getStatus());
        result.setUpdater(req.getUpdater());
        result.setSystemCode(req.getSystemCode());
        return result;
    }
}
