package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.FunctionBean;
import xinqi.ren.simpleadmin.bean.MenuBean;
import xinqi.ren.simpleadmin.bean.RoleBean;
import xinqi.ren.simpleadmin.bean.UserBean;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface UserCache {

    String cacheName = CacheEnum.User.getName();

    List<FunctionBean> getFunctions(UserBean userBean);
    List<FunctionBean> getFunctions(MenuBean menuBean);
    List<MenuBean> getMenus(UserBean userBean);
    List<RoleBean> getRoles(UserBean userBean);

}
