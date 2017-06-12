package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.RoleBean;
import xinqi.ren.simpleadmin.bean.UserBean;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface RoleCache {

    String cacheName = CacheEnum.Role.getName();;;

    default boolean getRoleCacheEnable() {
        return CacheUtils.getCacheEnable(CacheEnum.Role);
    }

    default List<RoleBean> getAllRole() {
        return CacheUtils.getListCache(cacheName, RoleBean.class);
    }

    default RoleBean getRoleBean(String roleName) {
        return CacheUtils.getCache(cacheName, roleName, RoleBean.class);
    }
    default RoleBean getRoleBean(int roleId) {
        return CacheUtils.getCache(cacheName, cacheName + "-" + String.valueOf(roleId), RoleBean.class);
    }

    default void setRoleBean(RoleBean roleBean) {
        CacheUtils.setCache(cacheName, roleBean.getName(), roleBean);
        CacheUtils.setCache(cacheName, cacheName + "-" + String.valueOf(roleBean.getId()), roleBean);
    }

    default void setRoleBean(UserBean userBean, List<RoleBean> roleBeans) {
        CacheUtils.setCache(cacheName, cacheName + "role-" + userBean.getId(), roleBeans);
    }

    default List<RoleBean> getRoleBean(UserBean userBean) {
        return CacheUtils.getListCache(cacheName, cacheName + "role-" + userBean.getId(), RoleBean.class);
    }
}
