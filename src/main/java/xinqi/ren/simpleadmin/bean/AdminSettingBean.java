package xinqi.ren.simpleadmin.bean;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by GongRui on 2017/5/19.
 */
@Table("simple_setting")
public class AdminSettingBean {

    private Integer id;

    @Colume("type")
    private String type;

    @Colume("key")
    private String key;

    @Colume("value")
    private String value;

    @Colume("update_time")
    private Timestamp updateTime;

    @Colume("description")
    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
