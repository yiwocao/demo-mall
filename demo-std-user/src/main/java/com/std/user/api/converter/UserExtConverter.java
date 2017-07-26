/**
 * @Title UserExtConverter.java 
 * @Package com.std.user.api.converter 
 * @Description 
 * @author xieyj  
 * @date 2016年10月11日 下午5:36:41 
 * @version V1.0   
 */
package com.std.user.api.converter;

import com.std.user.domain.UserExt;
import com.std.user.dto.req.XN805074Req;

/** 
 * @author: xieyj 
 * @since: 2016年10月11日 下午5:36:41 
 * @history:
 */
public class UserExtConverter {

    public static UserExt converter(XN805074Req req) {
        UserExt res = new UserExt();
        res.setUserId(req.getUserId());
        res.setGender(req.getGender());
        res.setBirthday(req.getBirthday());
        res.setPhoto(req.getPhoto());
        res.setEmail(req.getEmail());
        res.setDiploma(req.getDiploma());
        res.setOccupation(req.getOccupation());
        res.setWorkTime(req.getWorkTime());
        res.setProvince(req.getProvince());
        res.setCity(req.getCity());
        res.setArea(req.getArea());
        res.setAddress(req.getAddress());
        res.setIntroduce(req.getIntroduce());
        return res;
    }

}
