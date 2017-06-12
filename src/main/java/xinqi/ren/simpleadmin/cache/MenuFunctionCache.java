package xinqi.ren.simpleadmin.cache;

import xinqi.ren.simpleadmin.bean.MenuFunctionBean;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface MenuFunctionCache {

    String cacheName = CacheEnum.MenuFunction.getName();;

    default boolean getMenuFunctionCacheEnable() {
        return CacheUtils.getCacheEnable(CacheEnum.MenuFunction);
    }

    default List<MenuFunctionBean> getMenuFunctionBean(int menuId) {
        return CacheUtils.getListCache(cacheName, cacheName + "-" + String.valueOf(menuId), MenuFunctionBean.class);
    }

    /**
     * 保存到缓存
     * @param menuFunctionBean
     */
    default void setMenuFunction(MenuFunctionBean menuFunctionBean) {
        CacheUtils.setCache(cacheName,
                cacheName + "funcId-" + menuFunctionBean.getFunctionId(),
                menuFunctionBean);
    }

    /**
     * menuFunctionBeans 中必须是一组menuId ，不能出现多个menuId
     * @param menuFunctionBeans
     */
    default void setMenuFunction(List<MenuFunctionBean> menuFunctionBeans) {
        menuFunctionBeans.
            stream().
            forEach(
                menuFunctionBean -> CacheUtils.setCache(cacheName,
          cacheName + "funcId-" + menuFunctionBean.getFunctionId(),
                     menuFunctionBean)
        );
        if(menuFunctionBeans.stream().mapToInt(e -> e.getMenuId()).distinct().count() > 1) return;
        CacheUtils.setCache(cacheName, cacheName + "-" + menuFunctionBeans.get(0).getMenuId(), menuFunctionBeans);
    }

    /**
     * 根据funcId返回 MenuFunctionBean
     * @param funcId
     * @return
     */
    default MenuFunctionBean getMenuFunctionBeanByFuncId(int funcId) {
        return CacheUtils.getCache(cacheName, cacheName + "funcId-" + funcId, MenuFunctionBean.class);
    }
}
