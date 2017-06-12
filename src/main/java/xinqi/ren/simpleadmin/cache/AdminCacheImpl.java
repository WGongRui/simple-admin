package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.SimpleAdminConfig;
import xinqi.ren.simpleadmin.bean.*;
import xinqi.ren.simpleadmin.cache.AdminCache;
import xinqi.ren.simpleadmin.db.DbUtils;
import xinqi.ren.simpleadmin.utils.PropUtils;
import xinqi.ren.simpleadmin.utils.Utils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

/**
 * Created by GongRui on 6/3/2017.
 */
public class AdminCacheImpl implements AdminCache, UserCache {

    /**
     * 取得用户的所有有权限的功能
     * @param userBean
     * @return
     */
    @Override
    public List<FunctionBean> getFunctions(UserBean userBean) {
        List<UserFunctionBean> userFunctionBeans = null;
        List<FunctionBean> functionBeanList = null;

        // 先从缓存中取得数据返回
        if(getFuncCacheEnable() && !SimpleAdminConfig.getDevModel()) {
            functionBeanList = getFunctions(userBean);
            if(functionBeanList != null && functionBeanList.size() > 0)
                return functionBeanList;
        }
        //  从缓存中取得数据
        if(getFuncCacheEnable() && getUserFunctionCacheEnable() && !SimpleAdminConfig.getDevModel()) {
            userFunctionBeans = getUserFunctionBean(userBean.getId());
            functionBeanList = getAllFunction();
        }
        // 从数据库中读取数据并保存缓存中
        if(functionBeanList == null || userFunctionBeans == null ||
                userFunctionBeans.size() < 1 || functionBeanList.size() < 1) {
            try {
                functionBeanList = DbUtils.find(null, FunctionBean.class);
                userFunctionBeans = DbUtils.find("user_id", UserFunctionBean.class, userBean.getId());

                setAllFunction(functionBeanList);
                setUserFunction(userFunctionBeans);
            } catch (Exception e) {
                e.printStackTrace();
                return new ArrayList<>(0);
            }
        }
        // 处理数据
        IntStream intStream = userFunctionBeans.stream().mapToInt(e -> e.getFunctionId()).distinct();
        functionBeanList = functionBeanList.stream().
                filter(e ->
                        intStream.anyMatch(uf -> e.getId() == uf)
                ).
                collect(Collectors.toList());
        // 添加进缓存
        setFunctions(userBean, functionBeanList);
        return functionBeanList;
    }

    @Override
    public List<FunctionBean> getFunctions(MenuBean menuBean) {

        return null;
    }

    /**
     * 取得用户所有的菜单
     * @param userBean
     * @return
     */
    @Override
    public List<MenuBean> getMenus(UserBean userBean) {
        List<MenuBean> menuBeans = null;
        if(getMenuCacheEnable() && !SimpleAdminConfig.getDevModel()) {
            menuBeans = getMenuBean(userBean);
        }
        if(Utils.listIsEmpty(menuBeans)) {
            try {
                menuBeans = DbUtils.find(MenuBean.class, PropUtils.getValue("simple_user_menu"), userBean.getId());
                setMenuBean(userBean, menuBeans);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return Utils.getList(menuBeans);
    }

    /**
     * 取得用户所有的角色
     * @param userBean
     * @return
     */
    @Override
    public List<RoleBean> getRoles(UserBean userBean) {
        List<RoleBean> roleBeans = null;
        if(getMenuCacheEnable()) {
            roleBeans = getRoleBean(userBean);
        }
        if(Utils.listIsEmpty(roleBeans)) {
            try {
                roleBeans = DbUtils.find(RoleBean.class, PropUtils.getValue("simple_user_role"), userBean.getId());
                setRoleBean(userBean, roleBeans);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return Utils.getList(roleBeans);
    }
}
