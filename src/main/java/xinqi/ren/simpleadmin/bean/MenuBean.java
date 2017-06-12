package xinqi.ren.simpleadmin.bean;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by GongRui on 2017/5/19.
 */
@Table("simple_menu")
public class MenuBean {

    @Colume("id")
    private Integer id;

    @Colume("key")
    private String key;

    @Colume("name")
    private String name;

    @Colume("enable")
    private boolean enable;

    @Colume("create_time")
    private Timestamp createTime;

    @Colume("display_order")
    private Integer displayOrder;

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

    public String getCreateTime() {
        return createTime != null ? createTime.toString() : null;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public int getDisplayOrder() {
        return displayOrder;
    }

    public void setDisplayOrder(Integer displayOrder) {
        this.displayOrder = displayOrder;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }
}
