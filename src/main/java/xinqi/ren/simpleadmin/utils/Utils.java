package xinqi.ren.simpleadmin.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by GongRui on 6/3/2017.
 */
public class Utils {

    public static boolean listIsEmpty(List list) {
        return list == null || list.size() < 1;
    }

    public static List getList(List list) {
        if(list == null)
            return new ArrayList(0);
        return list;
    }
}
