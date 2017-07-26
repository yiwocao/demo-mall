/**
 * @Title StringUtil.java 
 * @Package com.ibis.account.common 
 * @Description 
 * @author miyb  
 * @date 2015-4-7 下午2:12:14 
 * @version V1.0   
 */
package com.std.user.common;

/** 
 * @author: miyb 
 * @since: 2015-4-7 下午2:12:14 
 * @history:
 */
public class StringUtil {
    public static String compressString(String... args) {
        StringBuffer str = new StringBuffer();
        for (String arg : args) {
            str.append(arg);
        }
        return str.toString();
    }

    public static String removeNonBmpUnicode(String str) {
        if (str == null) {
            return null;
        }
        str = str.replaceAll("[^\\u0000-\\uFFFF]", "");
        return str;
    }
}
