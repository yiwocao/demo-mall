package com.std.user.api.impl;

import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN807900Req;
import com.std.user.dto.res.XN001700Res;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;
import com.std.user.third.qiniu.impl.QnTokenImpl;

/**
 * 根据系统编号获取七牛uploadToken
 * @author: xieyj 
 * @since: 2016年10月11日 上午9:45:51 
 * @history:
 */
public class XN807900 extends AProcessor {
    private QnTokenImpl qnTokenImpl = SpringContextHolder
        .getBean(QnTokenImpl.class);

    private XN807900Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new XN001700Res(qnTokenImpl.getUploadToken(req.getSystemCode()));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN807900Req.class);
        StringValidater.validateBlank(req.getSystemCode());
    }
}
