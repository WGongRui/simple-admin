package xinqi.ren.simpleadmin.bean;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

import java.sql.Timestamp;

/**
 * Created by GongRui on 2017/5/19.
 */
@Table("simple_user")
public class UserBean {

    @Colume("id")
    private Integer id;

    @Colume("name")
    private String name;

    @Colume("password")
    private String password;

    @Colume("active")
    private Boolean active;

    @Colume("create_time")
    private Timestamp createTime;

    @Colume("update_time")
    private Timestamp updateTime;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean isActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public String getCreateTime() {
        return createTime != null ? createTime.toString() : null;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime != null ? updateTime.toString() : null;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }
}
