package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN001301Req;
import com.std.user.dto.res.XN001301Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 前端用户代注册(连同密码一起保存，不加密)，适用范围：菜狗
 * @author: myb858 
 * @since: 2015年11月1日 下午2:56:28 
 * @history:
 */
public class XN001301 extends AProcessor {
    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN001301Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new XN001301Res(userAO.doAddUserWithPwd(req.getMobile(),
            req.getLoginPwd(), req.getUserReferee(), req.getUpdater(),
            req.getRemark(), req.getIsRegHx(), req.getCompanyCode(),
            req.getSystemCode()));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN001301Req.class);
        StringValidater.validateBlank(req.getMobile(), req.getUpdater(),
            req.getSystemCode());
    }
}
