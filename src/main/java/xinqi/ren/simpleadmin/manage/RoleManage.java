package xinqi.ren.simpleadmin.manage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import xinqi.ren.simpleadmin.bean.RoleBean;
import xinqi.ren.simpleadmin.db.DbUtils;
import xinqi.ren.simpleadmin.utils.PropUtils;
import xinqi.ren.simpleadmin.utils.StringUtils;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by GongRui on 6/12/2017.
 */
public interface RoleManage {

    Logger logger = LoggerFactory.getLogger(RoleManage.class);

    /**
     * 添加一个角色
     * @param roleBean
     * @return
     */
    default RoleBean addRole(RoleBean roleBean) {
        if(roleBean != null && StringUtils.isChar(roleBean.getKey())
                && StringUtils.isNotBlank(roleBean.getName())) {
            logger.info("{} 添加角色 ", roleBean.getName());
            try {
                List<RoleBean> list =  DbUtils.find(RoleBean.class, PropUtils.getValue("simple_role"), 1,
                        0,
                        roleBean.getKey(),
                        roleBean.getName(),
                        roleBean.isEnable() ? 1 : 0,
                        roleBean.getDisplayOrder());
                return list != null && list.size() > 0 ? list.get(0) : null;
            } catch (SQLException e) {
                e.printStackTrace();
                logger.info("{} 添加角色失败 ", roleBean.getName());
                return null;
            }
        }
        return null;
    }

    /**
     * 添加一个角色
     * @param roleKey
     * @param roleName
     * @param enable
     * @param displayOrder
     */
    default RoleBean addRole(String roleKey, String roleName, boolean enable, int displayOrder) {
        RoleBean roleBean = new RoleBean();
        roleBean.setKey(roleKey);
        roleBean.setName(roleName);
        roleBean.setEnable(enable);
        roleBean.setDisplayOrder(displayOrder);
        return addRole(roleBean);
    }

    /**
     * 更新角色
     * @param roleId
     * @param roleKey
     * @param roleName
     * @param enable
     * @param displayOrder
     * @return
     */
    default RoleBean updateRole(int roleId, String roleKey, String roleName, boolean enable, int displayOrder) {
        RoleBean roleBean = new RoleBean();
        roleBean.setId(roleId);
        roleBean.setKey(roleKey);
        roleBean.setName(roleName);
        roleBean.setEnable(enable);
        roleBean.setDisplayOrder(displayOrder);
        return updateRole(roleBean);
    }

    /**
     * 更新角色
     * @param roleId
     * @param enable
     * @return
     */
    default RoleBean updateRole(int roleId, boolean enable) {
        RoleBean roleBean = new RoleBean();
        roleBean.setId(roleId);
        roleBean.setEnable(enable);
        return updateRole(roleBean);
    }

    /**
     * 更新角色
     * @param roleId
     * @param displayOrder
     * @return
     */
    default RoleBean updateRole(int roleId, int displayOrder) {
        RoleBean roleBean = new RoleBean();
        roleBean.setId(roleId);
        roleBean.setDisplayOrder(displayOrder);
        return updateRole(roleBean);
    }

    /**
     * 更新角色
     * @param roleId
     * @param enable
     * @param displayOrder
     * @return
     */
    default RoleBean updateRole(int roleId, boolean enable, int displayOrder) {
        RoleBean roleBean = new RoleBean();
        roleBean.setId(roleId);
        roleBean.setEnable(enable);
        roleBean.setDisplayOrder(displayOrder);
        return updateRole(roleBean);
    }

    /**
     * 更新角色
     * @param roleId
     * @param roleKey
     * @return
     */
    default RoleBean updateRole(int roleId, String roleKey) {
        RoleBean roleBean = new RoleBean();
        roleBean.setId(roleId);
        roleBean.setKey(roleKey);
        roleBean.setName("");
        roleBean.setEnable(null);
        roleBean.setDisplayOrder(-1);
        return updateRole(roleBean);
    }

    /**
     * 更新角色
     * @param roleId
     * @param roleKey
     * @return
     */
    default RoleBean updateRole(int roleId, String roleKey, String roleName) {
        RoleBean roleBean = new RoleBean();
        roleBean.setId(roleId);
        roleBean.setKey(roleKey);
        roleBean.setName(roleName);
        return updateRole(roleBean);
    }

    /**
     * 更新角色
     * @param roleBean
     * @return
     */
    default RoleBean updateRole(RoleBean roleBean) {
        if(roleBean != null && roleBean.getId() != null) {
            logger.info("更新角色 RoleId = {} ", roleBean.getId());
            try {
                List<RoleBean> list =  DbUtils.find(RoleBean.class, PropUtils.getValue("simple_role"),
                        2,
                        roleBean.getId(),
                        roleBean.getKey(),
                        roleBean.getName(),
                        roleBean.isEnable() == null ? -1 : roleBean.isEnable() ? 1 : 0,
                        roleBean.getDisplayOrder() == null ? -1 : roleBean.getDisplayOrder());
                return list != null && list.size() > 0 ? list.get(0) : null;
            } catch (SQLException e) {
                e.printStackTrace();
                logger.info("更新角色失败 RoleId = {} ", roleBean.getId());
                return null;
            }
        }
        return null;
    }

    /**
     * 删除角色
     * @param roleId
     * @return
     */
    default boolean deleteRole(int roleId) {
        RoleBean roleBean = new RoleBean();
        roleBean.setId(roleId);
        return deleteRole(roleBean);
    }

    /**
     * 删除角色
     * @param roleKey
     * @return
     */
    default boolean deleteRole(String roleKey) {
        RoleBean roleBean = new RoleBean();
        roleBean.setKey(roleKey);
        return deleteRole(roleBean);
    }

    /**
     * 删除角色
     * @param roleBean
     * @return
     */
    default boolean deleteRole(RoleBean roleBean) {
        if(roleBean != null && (roleBean.getId() != null || roleBean.getKey() != null)) {
            logger.info("删除角色 Role = {} ", roleBean.toString());
            try {
                return DbUtils.executeUpdate(PropUtils.getValue("simple_role"),
                        3,
                        roleBean.getId(),
                        roleBean.getKey(),
                        null,
                        -1,
                        -1) > 0;
            } catch (SQLException e) {
                e.printStackTrace();
                logger.info("删除角色失败 Role = {} ", roleBean.toString());
                return false;
            }
        }
        return false;
    }
}