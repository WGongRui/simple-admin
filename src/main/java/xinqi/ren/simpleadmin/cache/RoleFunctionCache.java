package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.RoleFunctionBean;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface RoleFunctionCache {

    String cacheName = CacheEnum.RoleFunction.getName();;;

    default boolean getRoleFunctionCacheEnable() {
        return CacheUtils.getCacheEnable(CacheEnum.RoleFunction);
    }

    default List<RoleFunctionBean> AllRoleFunctionBean() {
        return CacheUtils.getListCache(cacheName, RoleFunctionBean.class);
    }

    default List<RoleFunctionBean> getRoleFunctionBean(String roleName) {
        return CacheUtils.getListCache(cacheName, roleName, RoleFunctionBean.class);
    }
    default List<RoleFunctionBean> getRoleFunctionBean(int roleId) {
        return CacheUtils.getListCache(cacheName, cacheName + "-" + String.valueOf(roleId), RoleFunctionBean.class);
    }

    default void setRoleFunctionBean(List<RoleFunctionBean> roleFunctionBeans) {
        if(roleFunctionBeans.stream().mapToInt(e -> e.getRoleId()).distinct().count() > 1) return;
        CacheUtils.setCache(cacheName, cacheName + "-" + roleFunctionBeans.get(0).getRoleId(), roleFunctionBeans);
    }
}
