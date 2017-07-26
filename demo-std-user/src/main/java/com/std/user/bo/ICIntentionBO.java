package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.CIntention;

public interface ICIntentionBO extends IPaginableBO<CIntention> {

    public boolean isCIntentionExist(String code);

    public String saveCIntention(CIntention data);

    public int removeCIntention(String code);

    public int refreshCIntention(CIntention data);

    public List<CIntention> queryCIntentionList(CIntention condition);

    public CIntention getCIntention(String code);

}
