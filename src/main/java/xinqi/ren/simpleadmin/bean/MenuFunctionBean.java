package xinqi.ren.simpleadmin.bean;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

/**
 * Created by GongRui on 2017/5/19.
 */
@Table("simple_menu_function")
public class MenuFunctionBean {

    @Colume("menu_id")
    private Integer menuId;

    @Colume("function_id")
    private Integer functionId;

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public Integer getFunctionId() {
        return functionId;
    }

    public void setFunctionId(Integer functionId) {
        this.functionId = functionId;
    }
}

