package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.B2cSms;

public interface IB2cSmsBO extends IPaginableBO<B2cSms> {

    public boolean isB2cSmsExist(String code);

    public String saveB2cSms(B2cSms data);

    public int removeB2cSms(String code);

    public int refreshB2cSms(B2cSms data);

    public int refreshB2cSmsStatus(String code, String updater);

    public List<B2cSms> queryB2cSmsList(B2cSms condition);

    public B2cSms getB2cSms(String code);

}
