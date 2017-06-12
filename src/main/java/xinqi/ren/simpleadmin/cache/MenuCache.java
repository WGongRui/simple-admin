package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.MenuBean;
import xinqi.ren.simpleadmin.bean.UserBean;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface MenuCache {

    String cacheName = CacheEnum.MENU.getName();

    default boolean getMenuCacheEnable() {
        return CacheUtils.getCacheEnable(CacheEnum.MENU);
    }

    default List<MenuBean> getAllMenu() {
        return CacheUtils.getListCache(cacheName, cacheName, MenuBean.class);
    }

    default MenuBean getMenuBean(String menuName) {
        return CacheUtils.getCache(cacheName, menuName, MenuBean.class);
    }

    default MenuBean getMenuBean(int menuId) {
        return CacheUtils.getCache(cacheName, cacheName + "-" + String.valueOf(menuId), MenuBean.class);
    }

    default void setMenuBean(MenuBean menuBean) {
        CacheUtils.setCache(cacheName, menuBean.getName(), menuBean);
        CacheUtils.setCache(cacheName, cacheName + "-" + String.valueOf(menuBean.getId()), menuBean);
    }

    default List<MenuBean> getMenuBean(UserBean userBean) {
        return CacheUtils.getListCache(cacheName, cacheName + "user-" + userBean.getId(), MenuBean.class);
    }

    default void setMenuBean(UserBean userBean, List<MenuBean> menuBeans) {
        CacheUtils.setCache(cacheName, cacheName + "user-" + userBean.getId(), menuBeans);
    }
}
