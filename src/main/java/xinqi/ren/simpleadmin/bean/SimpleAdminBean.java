package xinqi.ren.simpleadmin.bean;

import xinqi.ren.simpleadmin.annotation.Colume;
import xinqi.ren.simpleadmin.annotation.Table;

/**
 * Created by GongRui on 6/3/2017.
 */
@Table("view_simple_admin")
public class SimpleAdminBean {

    @Colume("user_id")
    private Integer userId;

    @Colume("user_name")
    private String userName;

    @Colume("user_active")
    private boolean userActive;

    @Colume("role_id")
    private Integer roleId;

    @Colume("role_key")
    private String roleKey;

    @Colume("role_name")
    private String roleName;

    @Colume("role_enable")
    private boolean roleEnable;

    @Colume("menu_id")
    private Integer menuId;

    @Colume("menu_key")
    private String menuKey;

    @Colume("menu_name")
    private String menuName;

    @Colume("func_id")
    private Integer funcId;

    @Colume("func_key")
    private String funcKey;

    @Colume("func_name")
    private String funcName;

    @Colume("func_url")
    private String funcUrl;

    @Colume("func_enable")
    private boolean funcEnable;

    @Colume("func_display")
    private boolean funcDispaly;

    @Colume("role_display_order")
    private Integer roleDisplayOrder;

    @Colume("menu_display_order")
    private Integer menuDisplayOrder;

    @Colume("func_display_order")
    private Integer funcDispalyOrder;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public boolean isUserActive() {
        return userActive;
    }

    public void setUserActive(boolean userActive) {
        this.userActive = userActive;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleKey() {
        return roleKey;
    }

    public void setRoleKey(String roleKey) {
        this.roleKey = roleKey;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public boolean isRoleEnable() {
        return roleEnable;
    }

    public void setRoleEnable(boolean roleEnable) {
        this.roleEnable = roleEnable;
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getMenuKey() {
        return menuKey;
    }

    public void setMenuKey(String menuKey) {
        this.menuKey = menuKey;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public Integer getFuncId() {
        return funcId;
    }

    public void setFuncId(Integer funcId) {
        this.funcId = funcId;
    }

    public String getFuncKey() {
        return funcKey;
    }

    public void setFuncKey(String funcKey) {
        this.funcKey = funcKey;
    }

    public String getFuncName() {
        return funcName;
    }

    public void setFuncName(String funcName) {
        this.funcName = funcName;
    }

    public String getFuncUrl() {
        return funcUrl;
    }

    public void setFuncUrl(String funcUrl) {
        this.funcUrl = funcUrl;
    }

    public boolean isFuncEnable() {
        return funcEnable;
    }

    public void setFuncEnable(boolean funcEnable) {
        this.funcEnable = funcEnable;
    }

    public boolean isFuncDispaly() {
        return funcDispaly;
    }

    public void setFuncDispaly(boolean funcDispaly) {
        this.funcDispaly = funcDispaly;
    }

    public Integer getRoleDisplayOrder() {
        return roleDisplayOrder;
    }

    public void setRoleDisplayOrder(Integer roleDisplayOrder) {
        this.roleDisplayOrder = roleDisplayOrder;
    }

    public Integer getMenuDisplayOrder() {
        return menuDisplayOrder;
    }

    public void setMenuDisplayOrder(Integer menuDisplayOrder) {
        this.menuDisplayOrder = menuDisplayOrder;
    }

    public Integer getFuncDispalyOrder() {
        return funcDispalyOrder;
    }

    public void setFuncDispalyOrder(Integer funcDispalyOrder) {
        this.funcDispalyOrder = funcDispalyOrder;
    }
}
