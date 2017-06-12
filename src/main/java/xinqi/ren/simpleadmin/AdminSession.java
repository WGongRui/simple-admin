package xinqi.ren.simpleadmin;

import xinqi.ren.simpleadmin.bean.FunctionBean;
import xinqi.ren.simpleadmin.bean.MenuBean;
import xinqi.ren.simpleadmin.bean.RoleBean;
import xinqi.ren.simpleadmin.bean.UserBean;

import java.util.List;

/**
 * Created by GongRui on 5/21/2017.
 */
public interface AdminSession {

    UserBean getUserBean();
    default int getUserId() {
        return getUserBean().getId();
    }
    default String getUserName() {
        return getUserBean().getName();
    }

    // 是否有某菜单
    boolean hasMenu(int menuId);
    boolean hasMenu(String menuKey);
    default boolean hasMenu(MenuBean menuBean) {
        return hasMenu(menuBean.getId());
    }

    // 是否有某个角色
    boolean hasRole(int roleId);
    boolean hasRole(String roleKey);
    default boolean hasRole(RoleBean roleBean) {
        return hasRole(roleBean.getId());
    }

    // 是否有某个功能操作权限
    boolean hasFunction(int funcId);
    boolean hasFunction(String funcKey);
    default boolean hasFunction(FunctionBean functionBean) {
        return hasFunction(functionBean.getId());
    }

    // 获取角色
    List<RoleBean> getRoles();
    // 获取菜单
    List<MenuBean> getMenus();
    // 根据菜单获取操作的权限
    List<FunctionBean> getFunction(int menuId);
    // 有些功能是隐式的没有加载在菜单下面
    List<FunctionBean> getFunction();
    default List<FunctionBean> getFunction(MenuBean menuBean) {
        return getFunction(menuBean.getId());
    };
}
