package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.UserExt;

public interface IUserExtBO extends IPaginableBO<UserExt> {
    /**
     * 新增用户扩展
     * @param userId
     * @param systemCode 
     * @create: 2016年12月16日 上午9:26:12 xieyj
     * @history:
     */
    public void saveUserExt(String userId, String systemCode);

    /**
     * 新增用户扩展,包含定位地址
     * @param userId
     * @param province
     * @param city
     * @param area
     * @param systemCode 
     * @create: 2016年12月16日 上午9:26:05 xieyj
     * @history:
     */
    public void saveUserExt(String userId, String province, String city,
            String area, String systemCode);

    /**
     * 新增用户扩展
     * @param userId
     * @param photo
     * @param gender 
     * @create: 2016年11月17日 下午12:43:27 xieyj
     * @history:
     */
    public void saveUserExt(String userId, String photo, String gender,
            String systemCode);

    /**
     * 更新用户头像
     * @param userId
     * @param photo
     * @return 
     * @create: 2016年10月21日 下午7:47:19 xieyj
     * @history:
     */
    public int refreshUserPhoto(String userId, String photo);

    /** 
     * 更新用户信息
     * @param data
     * @return 
     * @create: 2016年9月18日 下午2:26:06 zuixian
     * @history: 
     */
    public int refreshUserExt(UserExt data);

    /**
     * 更新用户位置信息
     * @param userId
     * @param longitude
     * @param latitude
     * @return 
     * @create: 2016年12月22日 下午9:25:29 xieyj
     * @history:
     */
    public int refreshUserExtLngLat(String userId, String longitude,
            String latitude);

    /**
     * 获取扩展信息
     * @param userId
     * @return 
     * @create: 2016年9月19日 上午10:47:01 xieyj
     * @history:
     */
    public UserExt getUserExt(String userId);

    /**
     * 列表查询该辖区是否已经存在用户
     * @param condition
     * @return 
     * @create: 2016年12月27日 下午4:16:41 xieyj
     * @history:
     */
    public List<UserExt> queryUserExtList(UserExt condition);

    /**
     * 根据用户userId更新用户信息
     * @param userId
     * @param headimgurl
     * @param sex
     * @create: 2017年4月7日 下午6:15:55 asus
     * @history:
     */
    public void refreshUserExt(String userId, String headimgurl, String sex);

}
