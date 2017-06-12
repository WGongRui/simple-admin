package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.UserRoleBean;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface UserRoleCache {

    String cacheName = CacheEnum.UserRole.getName();

    default boolean getUserRoleCacheEnable() {
        return CacheUtils.getCacheEnable(CacheEnum.UserRole);
    }

    default List<UserRoleBean> AllUserRoleBean() {
        return CacheUtils.getListCache(cacheName, UserRoleBean.class);
    }

    default List<UserRoleBean> getUserRoleBean(String userName) {
        return CacheUtils.getListCache(cacheName, userName, UserRoleBean.class);
    }
    default List<UserRoleBean> getUserRoleBean(int userId) {
        return CacheUtils.getListCache(cacheName, cacheName + "-" + String.valueOf(userId), UserRoleBean.class);
    }

    default void setUserRole(List<UserRoleBean> userRoleBeans) {
        if(userRoleBeans.stream().mapToInt(e -> e.getUserId()).distinct().count() > 1) return;
        CacheUtils.setCache(cacheName, cacheName + "-" + userRoleBeans.get(0).getUserId(), userRoleBeans);
    }
}
