package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.CIntention;

public interface ICIntentionAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addCIntention(CIntention data);

    public int dropCIntention(String code);

    public int editCIntention(CIntention data);

    public Paginable<CIntention> queryCIntentionPage(int start, int limit,
            CIntention condition);

    public List<CIntention> queryCIntentionList(CIntention condition);

    public CIntention getCIntention(String code);

}
