import com.alibaba.druid.pool.DruidDataSourceFactory;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import xinqi.ren.simpleadmin.SimpleAdmin;
import xinqi.ren.simpleadmin.bean.AdminSettingBean;
import xinqi.ren.simpleadmin.bean.SimpleAdminBean;
import xinqi.ren.simpleadmin.db.DbConfig;
import xinqi.ren.simpleadmin.db.DbUtils;
import xinqi.ren.simpleadmin.utils.BeanUtils;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by GongRui on 5/21/2017.
 */
public class TestDatesource {

    private static DataSource dataSource;

    @BeforeClass
    public static void setDataSource() {
        Map<String,String> map = new HashMap<String, String>();
        map.put("username","root");
        map.put("password","");
        map.put("driverClassName","com.mysql.jdbc.Driver");
        map.put("url","jdbc:mysql://127.0.0.1/simple_admin?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull");
        try {
            dataSource = DruidDataSourceFactory.createDataSource(map);
        } catch (Exception e) {
            e.printStackTrace();
        }
        DbConfig.init(dataSource);
    }

    @Ignore
    @Test
    public void testBean() {
        Map<String, String> stringMap = BeanUtils.tableMappingField(AdminSettingBean.class);
        Iterator<Map.Entry<String, String>> it = stringMap.entrySet().iterator();
        while(it.hasNext()) {
            Object next = it.next();
            System.out.println(next);
        }
    }

    @Test
    public void testDb() {
        List<AdminSettingBean> list = DbUtils.find(AdminSettingBean.class, "SELECT * FROM `simple_setting`;");
        for (AdminSettingBean e : list) {
            System.out.println(e.getId() + "\t" +e.getType() + "\t" + e.getKey() + "\t" + e.getValue() + "\t" + e.getUpdateTime().toString() + "\t" + e.getDescription());
        }
    }

    @Test
    public void testCALL() throws SQLException {
//        System.out.println(DbUtils.executeCall("pro_test(?)").toString());
        System.out.println(DbUtils.executeCall("pro_test1()").toString());
    }
    @Test
    public void tesViewL() throws Exception {
//        System.out.println(DbUtils.executeCall("pro_test(?)").toString());
        System.out.println(DbUtils.find(null, SimpleAdminBean.class).toString());
    }
}
