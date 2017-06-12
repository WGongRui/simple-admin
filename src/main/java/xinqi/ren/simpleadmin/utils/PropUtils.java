package xinqi.ren.simpleadmin.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * Created by GongRui on 5/30/2017.
 */
public class PropUtils {

    private static Map<String, String> map = new HashMap();

    private PropUtils(){}

    public static void init() throws IOException {
        InputStream is = PropUtils.class.getClassLoader().getResourceAsStream("admin.properties");
        Properties prop = new Properties();
        prop.load(is);
        Enumeration<Object> keys = prop.keys();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement().toString();
            map.put(key, prop.getProperty(key));
        }
    }
    public static String getValue(String key) {
        return map.containsKey(key) ? map.get(key) : null;
    }

}
