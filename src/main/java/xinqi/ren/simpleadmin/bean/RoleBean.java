package xinqi.ren.simpleadmin.bean;

import com.alibaba.fastjson.annotation.JSONField;
import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by GongRui on 2017/5/19.
 */
@Table("simple_role")
public class RoleBean {

    @Colume("id")
    private Integer id;

    @Colume("key")
    private String key;

    @Colume("name")
    private String name;

    @Colume("create_time")
    private Timestamp createTime;

    @Colume("enable")
    private Boolean enable;

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

    public Boolean isEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    public Integer getDisplayOrder() {
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

    @Override
    public String toString() {
        return "RoleBean{" +
                "id=" + id +
                ", key='" + key + '\'' +
                ", name='" + name + '\'' +
                ", createTime=" + createTime +
                ", enable=" + enable +
                ", displayOrder=" + displayOrder +
                '}';
    }
}
