package xinqi.ren.simpleadmin.manage;

import xinqi.ren.simpleadmin.bean.UserBean;

/**
 * Created by GongRui on 6/12/2017.
 */
public interface UserManage {

    /**
     * 添加新用户
     * @param userName
     * @param password
     * @return
     */
    default UserBean addUser(String userName, String password,boolean isActive) {

        return null;
    }
    /**
     * 添加新用户
     * @param userName
     * @param password
     * @return
     */
    default UserBean addUser(String userName, String password) {

        return null;
    }

    /**
     * 添加新用户
     * @param userBean
     * @return
     */
    default UserBean addUser(UserBean userBean) {

        return null;
    }

    /**
     * 更新用户
     * @param userBean
     * @return
     */
    default UserBean updateUser(UserBean userBean) {

        return null;
    }

    default UserBean updateUser(int id, String userName, String password) {
        UserBean userBean = new UserBean();
        userBean.setId(id);
        userBean.setName(userName);
        userBean.setPassword(password);
        userBean.setActive(null);
        return updateUser(userBean);
    }

    default UserBean updateUser(int id, String userName, String password, boolean isActive) {
        UserBean userBean = new UserBean();
        userBean.setId(id);
        userBean.setName(userName);
        userBean.setPassword(password);
        userBean.setActive(isActive);
        return updateUser(userBean);
    }

    default UserBean updateUser(int id,boolean isActive) {
        UserBean userBean = new UserBean();
        userBean.setId(id);
        userBean.setActive(isActive);
        return updateUser(userBean);
    }

    default boolean deleteUser(int id){
        return false;
    }

    default boolean deleteUser(String userName){
        return false;
    }
}
