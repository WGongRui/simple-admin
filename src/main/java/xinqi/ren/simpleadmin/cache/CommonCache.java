package xinqi.ren.simpleadmin.cache;

import java.util.List;

/**
 * Created by GongRui on 2017/5/23.
 */
public interface CommonCache {

    default <E> List<E> getList(String cacheKey, Class<E> cls) {
        return CacheUtils.getListCache(cacheKey, cls);
    }

    default <E> E getBean(String cacheKey, Class<E> cls) {
        return CacheUtils.getCache( cacheKey, cls);
    }
    default <E> E getBean(long cacheId, Class<E> cls) {
        return CacheUtils.getCache(cacheId, cls);
    }

    default void setCache(String cacheKey, Object o) {
        CacheUtils.setCache(cacheKey, o);
    }
    default void setCache(long cacheId, Object o) {
        CacheUtils.setCache(cacheId, o);
    }
}
