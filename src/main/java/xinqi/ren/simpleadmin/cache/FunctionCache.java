package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.FunctionBean;
import xinqi.ren.simpleadmin.bean.UserBean;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface FunctionCache {

    String cacheName = CacheEnum.Function.getName();;

    default boolean getFuncCacheEnable() {
        return CacheUtils.getCacheEnable(CacheEnum.Function);
    }

    default List<FunctionBean> getAllFunction() {
        return CacheUtils.getListCache(cacheName, cacheName, FunctionBean.class);
    }

    default void setAllFunction(List<FunctionBean> functionBeanList) {
        CacheUtils.setCache(cacheName, cacheName, functionBeanList);
    }

    default FunctionBean getFunctionBean(String funcName) {
        return CacheUtils.getCache(cacheName, funcName, FunctionBean.class);
    }
    default FunctionBean getFunctionBean(int funcId) {
        return CacheUtils.getCache(cacheName, cacheName + "-" + String.valueOf(funcId), FunctionBean.class);
    }

    default void setFunctionBean(FunctionBean funcBean) {
        CacheUtils.setCache(cacheName, funcBean.getName(), funcBean);
        CacheUtils.setCache(cacheName, cacheName + "-" + String.valueOf(funcBean.getId()), funcBean);
    }

    /**
     * 获取用户的功能
     * @param userBean
     * @return
     */
    default List<FunctionBean> getFunctions(UserBean userBean) {
        return CacheUtils.getListCache(cacheName, userBean.getId() + "-" + userBean.getName(), FunctionBean.class);
    }

    /**
     * 添加进缓存
     * @param userBean
     * @param functionBeans
     */
    default void setFunctions(UserBean userBean, List<FunctionBean> functionBeans) {
        CacheUtils.setCache(cacheName, userBean.getId() + "-" + userBean.getName(), functionBeans);
    }

    /**
     * 将用户新加的功能添加进缓存
     * @param userBean
     * @param functionBean
     */
    default void setFunctions(UserBean userBean, FunctionBean functionBean) {
        List<FunctionBean> functionBeans = getFunctions(userBean);
        functionBeans.add(functionBean);
        setFunctions(userBean, functionBeans);
    }
}
