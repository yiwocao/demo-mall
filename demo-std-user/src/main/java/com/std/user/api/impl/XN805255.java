package com.std.user.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.User;
import com.std.user.dto.req.XN805255Req;
import com.std.user.enums.EUserKind;
import com.std.user.enums.EUserStatus;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 按昵称分页查询用户列表(城市网前端_无需登录)
 * @author: xieyj 
 * @since: 2017年1月10日 下午8:29:26 
 * @history:
 */
public class XN805255 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805255Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        User condition = new User();
        condition.setMobile(req.getMobile());
        condition.setNicknameForLikeQuery(req.getNickname());
        condition.setKind(EUserKind.F1.getCode());
        condition.setCompanyCode(req.getCompanyCode());
        condition.setSystemCode(req.getSystemCode());
        condition.setStatus(EUserStatus.NORMAL.getCode());
        String column = req.getOrderColumn();
        if (StringUtils.isBlank(column)) {
            column = IUserAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(column, req.getOrderDir());
        int start = Integer.valueOf(req.getStart());
        int limit = Integer.valueOf(req.getLimit());
        return userAO.queryUserPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805255Req.class);
        StringValidater.validateNumber(req.getStart(), req.getLimit());
        StringValidater.validateBlank(req.getNickname(), req.getSystemCode());
    }
}
