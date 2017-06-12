package xinqi.ren.simpleadmin.bean;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

import java.sql.Timestamp;

/**
 * Created by GongRui on 2017/5/19.
 */
@Table("simple_function")
public class FunctionBean {

    @Colume("id")
    private Integer id;

    @Colume("key")
    private String key;

    @Colume("name")
    private String name;

    @Colume("url")
    private String url;

    @Colume("create_time")
    private Timestamp createTime;

    @Colume("enable")
    private boolean enable;

    @Colume("dispaly")
    private boolean display;

    @Colume("display_order")
    private int displayOrder;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCreateTime() {
        return createTime != null ? createTime.toString() : null;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }

    public boolean isDisplay() {
        return display;
    }

    public void setDisplay(boolean display) {
        this.display = display;
    }

    public int getDisplayOrder() {
        return displayOrder;
    }

    public void setDisplayOrder(int displayOrder) {
        this.displayOrder = displayOrder;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
}
