package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.B2cSms;

public interface IB2cSmsAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addB2cSms(B2cSms data);

    public int dropB2cSms(String code);

    public int editB2cSms(B2cSms data);

    public int publishB2cSms(String code, String updater);

    public Paginable<B2cSms> queryB2cSmsPage(int start, int limit,
            B2cSms condition);

    public List<B2cSms> queryB2cSmsList(B2cSms condition);

    public B2cSms getB2cSms(String code);

}
