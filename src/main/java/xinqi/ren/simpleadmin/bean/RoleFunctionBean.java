package xinqi.ren.simpleadmin.bean;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

/**
 * Created by GongRui on 2017/5/19.
 */
@Table("simple_role_function")
public class RoleFunctionBean {

    @Colume("role_id")
    private Integer roleId;

    @Colume("function_id")
    private Integer functionId;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getFunctionId() {
        return functionId;
    }

    public void setFunctionId(Integer functionId) {
        this.functionId = functionId;
    }
}
