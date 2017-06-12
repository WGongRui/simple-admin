package xinqi.ren.simpleadmin.cache;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.ehcache.Cache;
import org.ehcache.CacheManager;
import org.ehcache.config.builders.CacheConfigurationBuilder;
import org.ehcache.config.builders.CacheManagerBuilder;
import org.ehcache.config.builders.ResourcePoolsBuilder;
import org.ehcache.config.units.MemoryUnit;
import org.ehcache.expiry.Duration;
import org.ehcache.expiry.Expirations;
import xinqi.ren.simpleadmin.bean.AdminSettingBean;
import xinqi.ren.simpleadmin.db.DbUtils;
import xinqi.ren.simpleadmin.utils.PropUtils;
import xinqi.ren.simpleadmin.utils.Utils;

import java.io.File;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

/**
 * Created by GongRui on 2017/5/22.
 */
public class CacheUtils {

    protected static CacheManager cacheManager  = null;
    protected static Map<String, Boolean> cacheEnable;

    private CacheUtils(){}

    public static boolean getCacheEnable(CacheEnum cacheEnum) {
        return cacheEnable.get(cacheEnum.getName());
    }

    public static void setCacheEnable(CacheEnum cacheEnum, Boolean bool) {
        cacheEnable.put(cacheEnum.getName(), bool);
    }
    /**
     * 初始化所有的缓存模块
     * @param cacheDiskPath
     */
    public static void init(String cacheDiskPath) {
        // 默认把所有的Cache都开启
        cacheEnable = new ConcurrentHashMap<>(8);
        Arrays.asList(CacheEnum.values()).
                    stream().
                    forEach(e ->
                        cacheEnable.put(e.getName(), true)
                    );
        // 加载数据库的Cache
        String sql = PropUtils.getValue("cacheSql");
        List<AdminSettingBean> adminSettingBeans = DbUtils.find(AdminSettingBean.class, sql);
        if(adminSettingBeans != null) {
            adminSettingBeans.stream().forEach(
                adminSettingBean ->
                    cacheEnable.put(adminSettingBean.getKey(), Boolean.valueOf(adminSettingBean.getValue()))
            );
        }

        // 初始化Cahce系统
        if(new File(cacheDiskPath).exists() && new File(cacheDiskPath).isFile()) new Exception("缓存路径错误，不能是文件");

        cacheManager = CacheManagerBuilder.newCacheManagerBuilder().
            with(CacheManagerBuilder.persistence(new File(cacheDiskPath))).
            withCache("Menu", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.heap(10L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("Function", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.heap(20L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("Role", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.heap(10L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("User", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.heap(100L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("UserRole", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.heap(50L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("UserFunction", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.heap(100L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("MenuFunction", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.heap(50L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("RoleFunction", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.heap(20L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("CommonCache", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                Long.class,
                String.class,
                ResourcePoolsBuilder.newResourcePoolsBuilder().heap(100L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            withCache("CommonCache", CacheConfigurationBuilder.newCacheConfigurationBuilder(
                String.class,
                String.class,
                ResourcePoolsBuilder.newResourcePoolsBuilder().heap(100L).offheap(10L, MemoryUnit.MB).disk(50L, MemoryUnit.MB, true).build()).
                withExpiry(Expirations.timeToLiveExpiration(Duration.of(1, TimeUnit.DAYS)))).
            build(true);
    }

    protected static void setCache(long cacheId, Object e) {
        setCache("CommonCache", cacheId, e);
    }

    protected static void setCache(String cacheKey, Object e) {
        setCache("CommonCache", cacheKey, e);
    }

    protected static <E> E getCache(long cacheId, Class<E> cls) {
        return getCache("CommonCache", cacheId, cls);
    }

    protected static <E> E getCache(String cacheKey, Class<E> cls) {
        return getCache("CommonCache", cacheKey, cls);
    }

    protected static void setCache(String cacheKey, List list) {
        setCache("CommonCache", cacheKey, list);
    }

    protected static <E> List<E> getListCache(String cacheKey, Class<E> cls) {
        return getListCache("CommonCache", cacheKey, cls);
    }

    protected static void setCache(String cacheName, long cacheId, Object e) {
        Cache<Long, String> cache = CacheUtils.cacheManager.getCache(cacheName, Long.class, String.class);
        String json = JSON.toJSONString(e, SerializerFeature.WriteNullStringAsEmpty, SerializerFeature.WriteNullListAsEmpty);
        cache.put(cacheId, json);
    }

    protected static void setCache(String cacheName, String cacheKey, Object e) {
        Cache<String, String> cache = CacheUtils.cacheManager.getCache(cacheName, String.class, String.class);
        String json = JSON.toJSONString(e, SerializerFeature.WriteNullStringAsEmpty, SerializerFeature.WriteNullListAsEmpty);
        cache.put(cacheKey, json);
    }

    protected static <E> E getCache(String cacheName, long cacheId, Class<E> cls) {
        Cache<Long, String> cache = CacheUtils.cacheManager.getCache(cacheName, Long.class, String.class);
        String json = cache.get(cacheId);

        if(json != null) {
            return JSON.toJavaObject(JSON.parseObject(json), cls);
        }
        return null;
    }

    protected static <E> E getCache(String cacheName, String cacheKey, Class<E> cls) {
        Cache<String, String> cache = CacheUtils.cacheManager.getCache(cacheName, String.class, String.class);
        String json = cache.get(cacheKey);
        if(json != null) {
            return JSON.toJavaObject(JSON.parseObject(json), cls);
        }
        return null;
    }

    protected static void setCache(String cacheName, String cacheKey, List list) {
        Cache<String, String> cache = CacheUtils.cacheManager.getCache(cacheName, String.class, String.class);
        String json = JSON.toJSONString(list, SerializerFeature.WriteNullStringAsEmpty, SerializerFeature.WriteNullListAsEmpty);
        cache.put(cacheKey, json);
    }

    protected static <E> List<E> getListCache(String cacheName, String cacheKey, Class<E> cls) {
        Cache<String, String> cache = CacheUtils.cacheManager.getCache(cacheName, String.class, String.class);
        String json = cache.get(cacheKey);
        if(json != null) {
            List<E> list = JSON.parseArray(json, cls);
            return list;
        }
        return null;
    }
}
