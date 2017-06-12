package xinqi.ren.simpleadmin.cache;

/**
 * Created by GongRui on 5/30/2017.
 */
public enum CacheEnum {

    MENU("Menu"),
    Function("Function"),
    Role("Role"),
    User("User"),
    UserRole("UserRole"),
    UserFunction("UserFunction"),
    MenuFunction("MenuFunction"),
    RoleFunction("RoleFunction");

    private String name;

    public String getName(){
        return this.name;
    }
    CacheEnum(String name){
        this.name = name;
    }
}
