package xinqi.ren.simpleadmin.bean;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

/**
 * Created by GongRui on 2017/5/19.
 */
@Table("simple_user_function")
public class UserFunctionBean {

    @Colume("user_id")
    private Integer userId;

    @Colume("function_id")
    private Integer functionId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFunctionId() {
        return functionId;
    }

    public void setFunctionId(Integer functionId) {
        this.functionId = functionId;
    }
}
