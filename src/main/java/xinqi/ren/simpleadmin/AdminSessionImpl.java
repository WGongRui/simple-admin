package xinqi.ren.simpleadmin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import xinqi.ren.simpleadmin.bean.FunctionBean;
import xinqi.ren.simpleadmin.bean.MenuBean;
import xinqi.ren.simpleadmin.bean.RoleBean;
import xinqi.ren.simpleadmin.bean.UserBean;
import xinqi.ren.simpleadmin.cache.UserCache;
import xinqi.ren.simpleadmin.cache.UserCacheImp;

import java.util.List;

/**
 * Created by GongRui on 6/3/2017.
 */
class AdminSessionImpl implements AdminSession {

    private static final Logger logger = LoggerFactory.getLogger(AdminSessionImpl.class);
    private UserBean userBean;
    private UserCache userCache;

    public AdminSessionImpl(UserBean userBean) {
        this.userBean = userBean;
        userCache = new UserCacheImp();
    }

    @Override
    public UserBean getUserBean() {
        return this.userBean;
    }

    @Override
    public boolean hasMenu(int menuId) {
        return getMenus().stream().
                anyMatch(menuBean ->
                        menuBean.getId() == menuId
                );
    }

    @Override
    public boolean hasMenu(String menuKey) {
        return getMenus().stream().
                anyMatch(menuBean ->
                        menuBean.getKey().equals(menuKey)
                );
    }

    @Override
    public boolean hasRole(int roleId) {
        return getRoles().stream().
                anyMatch(roleBean ->
                        roleBean.getId() == roleId
                );
    }

    @Override
    public boolean hasRole(String roleName) {
        return getRoles().stream().
                anyMatch(roleBean ->
                        roleBean.getName().equals(roleName)
                );
    }

    @Override
    public boolean hasFunction(int funcId) {
        return userCache.getFunctions(userBean).stream().
                anyMatch(functionBean ->
                        functionBean.getId() == funcId
                );
    }

    @Override
    public boolean hasFunction(String funcName) {
        return userCache.getFunctions(userBean).stream().
                anyMatch(functionBean ->
                        functionBean.getName().equals(funcName)
                );
    }

    /**
     * 获取角色
     * @return
     */
    @Override
    public List<RoleBean> getRoles() {
        return userCache.getRoles(userBean);
    }

    /**
     * 获取用户所有显示的菜单
     * @return
     */
    @Override
    public List<MenuBean> getMenus() {
        return userCache.getMenus(userBean);
    }

    @Override
    public List<FunctionBean> getFunction(int menuId) {
        return null;
    }

    /**
     * 获取没有在菜单中的功能
     * @return
     */
    @Override
    public List<FunctionBean> getFunction() {

        return null;
    }

    /**
     * 获取用户某个Menu下可的操作功能
     * @param menuBean
     * @return
     */
    @Override
    public List<FunctionBean> getFunction(MenuBean menuBean) {
        return userCache.getFunctions(menuBean);
    }
}