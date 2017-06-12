package xinqi.ren.simpleadmin;

import xinqi.ren.simpleadmin.cache.CacheUtils;
import xinqi.ren.simpleadmin.db.DbConfig;

import javax.sql.DataSource;

/**
 * Created by GongRui on 6/4/2017.
 */
public class SimpleAdminConfig {

    private static boolean devModel = false;

    private SimpleAdminConfig(DataSource dataSource, String cachePath){
        DbConfig.init(dataSource);
        CacheUtils.init(cachePath);
    }

    public void setDataSource(DataSource dataSource) {
        DbConfig.init(dataSource);
    }

    public void setDevModel(boolean devModel) {
        this.devModel = devModel;
    }

    public static boolean getDevModel() {
        return devModel;
    }

    public void setCachePath(String cachePath) {
        CacheUtils.init(cachePath);
    }
}
