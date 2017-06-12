package xinqi.ren.simpleadmin.utils;

import java.util.regex.Pattern;

/**
 * Created by GongRui on 5/25/2017.
 */
public class StringUtils {

    /**
     * 判断字符串是否为空
     * @param str
     * @return
     */
    public static boolean isNotBlank(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static boolean isChar(String str) {
        if(isNotBlank(str)) {
            return Pattern.matches("^[a-zA-Z0-9_-]+$", str);
        }
        return false;
    }
}
