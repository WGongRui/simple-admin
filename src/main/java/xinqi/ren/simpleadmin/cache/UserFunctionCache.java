package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.UserFunctionBean;
import xinqi.ren.simpleadmin.db.DbUtils;
import xinqi.ren.simpleadmin.utils.PropUtils;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface UserFunctionCache {

    String cacheName = CacheEnum.UserFunction.getName();

    default boolean getUserFunctionCacheEnable() {
        return CacheUtils.getCacheEnable(CacheEnum.UserFunction);
    }

    default List<UserFunctionBean> allUserFunctionBean() throws Exception {
        List<UserFunctionBean> userFunctionBeans;
        if(getUserFunctionCacheEnable()) {
            userFunctionBeans = CacheUtils.getListCache(cacheName,cacheName, UserFunctionBean.class);
            if(userFunctionBeans != null && userFunctionBeans.size() > 0)
                return userFunctionBeans;
        }
        userFunctionBeans = DbUtils.find("user_id", UserFunctionBean.class);
        CacheUtils.setCache(cacheName, cacheName, userFunctionBeans);
        return userFunctionBeans;
    }

    /**
     * 根据用户名取得UserFunction
     * @param userName
     * @return
     * @throws Exception
     */
    default List<UserFunctionBean> getUserFunctionBean(String userName) throws Exception {
        List<UserFunctionBean> userFunctionBeans;
        if(getUserFunctionCacheEnable()) {
            userFunctionBeans = CacheUtils.getListCache(cacheName, userName, UserFunctionBean.class);
            if(userFunctionBeans != null && userFunctionBeans.size() > 0)
                return userFunctionBeans;
        }
        userFunctionBeans = DbUtils.find(UserFunctionBean.class, PropUtils.getValue("simple_user_func"), userName);
        CacheUtils.setCache(cacheName, userName, userFunctionBeans);
        return userFunctionBeans;
    }

    default List<UserFunctionBean> getUserFunctionBean(int userId) {
        return CacheUtils.getListCache(cacheName, cacheName + "-" + String.valueOf(userId), UserFunctionBean.class);
    }

    default void setUserFunction(List<UserFunctionBean> userFunctionBeans) {
        if(userFunctionBeans.stream().mapToInt(e -> e.getUserId()).distinct().count() > 1) return;
        CacheUtils.setCache(cacheName, cacheName + "-" + userFunctionBeans.get(0).getUserId(), userFunctionBeans);
    }
}
