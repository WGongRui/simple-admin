package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.SimpleAdminConfig;
import xinqi.ren.simpleadmin.bean.FunctionBean;
import xinqi.ren.simpleadmin.bean.MenuBean;
import xinqi.ren.simpleadmin.bean.RoleBean;
import xinqi.ren.simpleadmin.bean.UserBean;
import xinqi.ren.simpleadmin.utils.Utils;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by GongRui on 6/3/2017.
 */
public class UserCacheImp implements UserCache {

    private AdminCacheImpl cache = new AdminCacheImpl();

    /**
     * 获取所有可用的功能
     * @param userBean
     * @return
     */
    @Override
    public List<FunctionBean> getFunctions(UserBean userBean) {
        String cacheKey = cacheName + "-func-user-" + userBean.getId();
        List<FunctionBean> functionBeanList = getList(cacheKey, FunctionBean.class);;
        if(Utils.listIsEmpty(functionBeanList)) {
            functionBeanList = cache.getFunctions(userBean);
            functionBeanList = functionBeanList.stream().filter(functionBean -> functionBean.isEnable()).collect(Collectors.toList());
            CacheUtils.setCache(cacheName,cacheKey , functionBeanList);
        }
        return functionBeanList;
    }

    /**
     * 获取某个菜单下可用的功能
     * @param menuBean
     * @return
     */
    @Override
    public List<FunctionBean> getFunctions(MenuBean menuBean) {
        String cacheKey = cacheName + "-user-func-" + menuBean.getId();
        List<FunctionBean> functionBeanList = getList(cacheKey, FunctionBean.class);;
        if(Utils.listIsEmpty(functionBeanList) && menuBean.isEnable()) {
            functionBeanList = cache.getFunctions(menuBean);
            functionBeanList = functionBeanList.stream().filter(functionBean -> functionBean.isEnable()).collect(Collectors.toList());
            CacheUtils.setCache(cacheName,cacheKey , functionBeanList);
        }
        return functionBeanList;
    }

    /**
     * 获取可用的菜单
     * @param userBean
     * @return
     */
    @Override
    public List<MenuBean> getMenus(UserBean userBean) {
        String cacheKey = cacheName + "-menu-user-" + userBean.getId();
        List<MenuBean> menuBeans = getList(cacheKey, MenuBean.class);;
        if(Utils.listIsEmpty(menuBeans)) {
            menuBeans = cache.getMenus(userBean);
            menuBeans = menuBeans.stream().filter(menuBean -> menuBean.isEnable()).collect(Collectors.toList());
            CacheUtils.setCache(cacheName,cacheKey , menuBeans);
        }
        return menuBeans;
    }

    /**
     * 获取可用的角色
     * @param userBean
     * @return
     */
    @Override
    public List<RoleBean> getRoles(UserBean userBean) {
        String cacheKey = cacheName + "-role-user-" + userBean.getId();
        List<RoleBean> roleBeans = getList(cacheKey, RoleBean.class);
        if(Utils.listIsEmpty(roleBeans)) {
            roleBeans = cache.getRoles(userBean);
            roleBeans = roleBeans.stream().filter(menuBean -> menuBean.isEnable()).collect(Collectors.toList());
            CacheUtils.setCache(cacheName,cacheKey , roleBeans);
        }
        return roleBeans;
    }

    /**
     * 获取缓存
     * @param cacheKey
     * @param cls
     * @param <E>
     * @return
     */
    private <E> List<E> getList(String cacheKey, Class<E> cls) {
        if(CacheUtils.getCacheEnable(CacheEnum.User) && SimpleAdminConfig.getDevModel()) {
            return CacheUtils.getListCache(cacheName, cacheKey, cls);
        }
        return Utils.getList(null);
    }
}
