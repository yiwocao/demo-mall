/**
 * @Title ISYSDictBO.java 
 * @Package com.xnjr.moom.bo 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年4月17日 下午2:40:19 
 * @version V1.0   
 */
package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.SYSDict;

/** 
 * @author: haiqingzheng 
 * @since: 2016年4月17日 下午2:40:19 
 * @history:
 */
public interface ISYSDictBO extends IPaginableBO<SYSDict> {

    public Long saveSecondDict(SYSDict sysDict);

    public void removeSYSDict(Long id);

    public void checkKeys(String parentKey, String key, String systemCode,
            String companyCode);

    public void refreshSYSDict(Long id, String value, String updater,
            String remark);

    public List<SYSDict> querySYSDictList(SYSDict condition);

    public SYSDict getSYSDict(Long id);

}
