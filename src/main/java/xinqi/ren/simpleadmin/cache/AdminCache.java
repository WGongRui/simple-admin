package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.UserBean;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface AdminCache extends MenuCache, CommonCache,
        FunctionCache, MenuFunctionCache, RoleCache, RoleFunctionCache, UserFunctionCache, UserRoleCache {


    default List<UserBean> getAllUser() {
        return CacheUtils.getListCache(UserCache.cacheName, UserCache.cacheName ,UserBean.class);
    }

    default boolean getUserCacheEnable() {
        return CacheUtils.getCacheEnable(CacheEnum.User);
    }

    default UserBean getUserBean(String userName) {
        return CacheUtils.getCache(UserCache.cacheName, userName, UserBean.class);
    }

    default UserBean getUserBean(int userId) {
        return CacheUtils.getCache(UserCache.cacheName, UserCache.cacheName + "-" + String.valueOf(userId), UserBean.class);
    }

    default void setUserBean(UserBean userBean) {
        CacheUtils.setCache(UserCache.cacheName, userBean.getName(), userBean);
        CacheUtils.setCache(UserCache.cacheName, UserCache.cacheName + "-" + String.valueOf(userBean.getId()), userBean);
    }

}
