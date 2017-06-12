package xinqi.ren.simpleadmin.utils;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by GongRui on 5/20/2017.
 */
public class BeanUtils {

    /**
     * 设置Bean中的值
     * @param obj  实例化的对象
     * @param field 属性 需要有set方法
     * @param value 值
     */
    public static void set(Object obj, String field, Object value) {
        if(obj == null || field == null || field.trim().length() < 1) return;
        try {
            Method method = obj.getClass().getDeclaredMethod("set" + field.substring(0,1).toUpperCase() + field.substring(1), value.getClass());
            if(method != null) {
                method.invoke(obj,value);
            }
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取表字段与bean属性的对应关系
     * @param cls
     * @return
     */
    public static Map<String, String> tableMappingField(Class cls) {
        Field[] fields = cls.getDeclaredFields();
        Map<String, String> map = new HashMap<>();
        for(Field f : fields) {
            Colume ano = f.getAnnotation(Colume.class);
            if(ano == null) {
                map.put(f.getName(), f.getName());
            } else {
                map.put(ano.value(), f.getName());
            }
        }
        return map;
    }

    /**
     * 获取类对应的表名称，如果有Table注解，则返回注解的Value,否则返回类的名称
     * @param cls
     * @return
     */
    public static String tableNmae(Class cls) {
        Table table = (Table) cls.getAnnotation(Table.class);
        if (table != null) {
            return table.value();
        }
        return cls.getSimpleName();
    }

}
