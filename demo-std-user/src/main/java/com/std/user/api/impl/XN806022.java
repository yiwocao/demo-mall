package com.std.user.api.impl;

import com.std.user.ao.ICPasswordAO;
import com.std.user.api.AProcessor;
import com.std.user.api.converter.CPasswordConverter;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CPassword;
import com.std.user.dto.req.XN806022Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 修改密码记录
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806022 extends AProcessor {

    private ICPasswordAO cPasswordAO = SpringContextHolder
        .getBean(ICPasswordAO.class);

    private XN806022Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CPassword data = CPasswordConverter.converter(req);
        int count = cPasswordAO.editCPassword(data);
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806022Req.class);
        StringValidater.validateBlank(req.getCode(), req.getType(),
            req.getAccount(), req.getPassword(), req.getCompanyCode());
    }
}
