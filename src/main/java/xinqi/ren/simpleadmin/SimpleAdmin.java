package xinqi.ren.simpleadmin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import xinqi.ren.simpleadmin.bean.*;
import xinqi.ren.simpleadmin.cache.*;
import xinqi.ren.simpleadmin.db.DbUtils;
import xinqi.ren.simpleadmin.manage.AdminManage;
import xinqi.ren.simpleadmin.manage.RoleManage;
import xinqi.ren.simpleadmin.utils.PropUtils;
import xinqi.ren.simpleadmin.utils.StringUtils;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by GongRui on 5/21/2017.
 */
public class SimpleAdmin implements RoleManage {

    static final Logger logger = LoggerFactory.getLogger(SimpleAdmin.class);

    private static final AdminCache cache = new AdminCacheImpl();;
    private static final AdminManage manage = new AdminManageImpl();

    private SimpleAdmin() {

    }

    public static AdminSession getSession(String userName) {
        if(StringUtils.isNotBlank(userName)){
            new AdminCacheImpl();
        }
        return null;
    }

    public static AdminSession getSession(int userId) {
        if (userId <= 0) return null;
        UserBean userBean = null;
        return new AdminSessionImpl(userBean);
    }

    public static AdminCache getAdminCache() {
        return cache;
    }

    public static AdminSession auth(String userName, String password) {
        UserBean userBean = new UserBean();
        return new AdminSessionImpl(userBean);
    }

    public static AdminCache getCache() throws Exception {
        return new AdminCacheImpl();
    }

    public static AdminManage getManage() {
        return manage;
    }
}