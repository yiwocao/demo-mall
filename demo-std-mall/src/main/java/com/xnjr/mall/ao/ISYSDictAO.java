/**
 * @Title ISYSDictAO.java 
 * @Package com.xnjr.moom.ao 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年4月17日 下午5:12:19 
 * @version V1.0   
 */
package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.SYSDict;
import com.xnjr.mall.dto.req.XN808900Req;

/** 
 * @author: haiqingzheng 
 * @since: 2016年4月17日 下午5:12:19 
 * @history:
 */
public interface ISYSDictAO {
    static String DEFAULT_ORDER_COLUMN = "id";

    public Long addSecondDict(XN808900Req req);

    public void dropSYSDict(Long id);

    public void editSYSDict(Long id, String value, String updater, String remark);

    public Paginable<SYSDict> querySYSDictPage(int start, int limit,
            SYSDict condition);

    public List<SYSDict> querySysDictList(SYSDict condition);

    public SYSDict getSYSDict(Long id);
}
