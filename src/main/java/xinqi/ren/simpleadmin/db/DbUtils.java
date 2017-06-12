package xinqi.ren.simpleadmin.db;

import com.sun.istack.internal.NotNull;
import xinqi.ren.simpleadmin.utils.BeanUtils;

import java.sql.*;
import java.util.*;

/**
 * Created by GongRui on 5/20/2017.
 */
public class DbUtils {

    private static Connection con = null;
    private static Statement statement = null;
    private static CallableStatement callStatement = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    private static Statement statement() {
        con = DbConfig.getConnection();
        try {
            statement = con.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statement;
    }

    private static PreparedStatement callableStatement(String sql) {
        con = DbConfig.getConnection();
        try {
            callStatement = con.prepareCall(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return callStatement;
    }

    private static PreparedStatement prepareStatement(String sql) {
        con = DbConfig.getConnection();
        try {
            preparedStatement = con.prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return preparedStatement;
    }

    /**
     * 关闭数据库
     */
    private static void closeCon() {
        try {
            if(resultSet != null)
                resultSet.close();
            if(statement != null)
                statement.close();
            if(callStatement != null)
                callStatement.close();
            if(preparedStatement != null)
                preparedStatement.close();

            if(con != null)
                con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            con = null;
            statement = null;
            callStatement = null;
            preparedStatement = null;
            resultSet = null;
        }
    }

    /**
     * 将resultSet组装成bean返回
     * @param cls
     * @param <E>
     * @return
     * @throws SQLException
     */
    private static <E> List<E> mappingToBean(Class<E> cls) throws SQLException {

        if(resultSet == null) return null;
        ResultSetMetaData result =  resultSet.getMetaData();
        int count = result.getColumnCount();
        List<String> columnList = new ArrayList<String>(count);
        List<Integer> columnTypeList = new ArrayList<Integer>(count);
        for(int i = 1; i <= count; i++) {
            columnTypeList.add(result.getColumnType(i));
            columnList.add(result.getColumnName(i));
        }
        Map<String, String> map = BeanUtils.tableMappingField(cls);
        List<E> list = new LinkedList();
        while(resultSet.next()) {
            E o = null;
            try {
                o = cls.newInstance();
            } catch (Exception e) {
                e.printStackTrace();
            }
            for(int i = 1; i <= count; i++) {
                if(!map.containsKey(columnList.get(i - i))) continue;

                int index = i - 1;
                if(columnTypeList.get(index) == Types.TIMESTAMP) {
                    BeanUtils.set(o, map.get(columnList.get(index)), resultSet.getTimestamp(i));
                } else if(columnTypeList.get(index) == Types.VARCHAR) {
                    BeanUtils.set(o, map.get(columnList.get(index)), resultSet.getString(i));
                } else if(columnTypeList.get(index) == Types.INTEGER) {
                    BeanUtils.set(o, map.get(columnList.get(index)), resultSet.getInt(i));
                } else if(columnTypeList.get(index) == Types.TINYINT) {
                    BeanUtils.set(o, map.get(columnList.get(index)), resultSet.getBoolean(i));
                } else if(columnTypeList.get(index) == Types.DATE) {
                    BeanUtils.set(o, map.get(columnList.get(index)), resultSet.getDate(i));
                } else if(columnTypeList.get(index) == Types.NUMERIC) {
                    BeanUtils.set(o, map.get(columnList.get(index)), resultSet.getLong(i));
                }
            }
            list.add(o);
        }
        return list;
    }

    public static <E> List<E> find(Class<E> cls, String sql) {
        try {
            resultSet = statement().executeQuery(sql);
            return mappingToBean(cls);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static  <E> E findOne(Class<E> cls, String sql) {
        List<E> list = find(cls, sql);
        return list == null ? null : list.get(0);
    }

    /**
     * 根据主键Id查询记录，并返回bean
     * @param cls
     * @param id
     * @param <E>
     * @return
     */
    public static <E> E findOne(Class<E> cls, int id) {
        String table = BeanUtils.tableNmae(cls);
        String sql = "SELECT * FROM " + table + " WHERE id = " + id;
        List<E> list = find(cls, sql);
        return list == null ? null : list.get(0);
    }

    public static List<Object> executeCall(String sql, Object...paras) throws SQLException {
        List<Object> objects = new ArrayList<>();

        callableStatement("CALL " + sql);
        int len = paras.length;
        for(int i = 1; i <= len; len++) {
            callStatement.setObject(i , paras[i]);
        }
        ParameterMetaData pmd = callStatement.getParameterMetaData();
        int pc = pmd.getParameterCount();
        for(int i = 1; i<= pc; i++) {
            if(pmd.getParameterMode(i) == ParameterMetaData.parameterModeOut ||
                    pmd.getParameterMode(i) == ParameterMetaData.parameterModeInOut) {
                callStatement.registerOutParameter(i, pmd.getParameterType(i), pmd.getParameterTypeName(i));
            }
        }
        callStatement.execute();
        for(int i = 1; i<= pc; i++) {
            if(pmd.getParameterMode(i) == ParameterMetaData.parameterModeOut ||
                    pmd.getParameterMode(i) == ParameterMetaData.parameterModeInOut) {
                objects.add(callStatement.getObject(i));
            }
        }
        closeCon();
        return objects;
    }

    /**
     *  执行存储过程
     *  example
     *      executeCall("updateCache(?, ?)", "UserCacheEnable", "true")
     *  out 类型的参数放在存储过程的后面
     * @param sql 存储过程语句
     * @param paras 存储过程参数，可以为 null
     * @return
     */
    public static <E> List<E> executeCall(Class<E> cls, String sql, Object...paras) throws SQLException {
        List<E> objects = new ArrayList<>();
        callableStatement("CALL " + sql);
        int len = paras.length;
        for(int i = 1; i <= len; len++) {
           callStatement.setObject(i , paras[i]);
        }
        callStatement.execute();
        resultSet = callStatement.getResultSet();
        if(resultSet != null) {
            return mappingToBean(cls);
        }
        closeCon();
        return objects;
    }

    /**
     * @param cls
     * @param sql
     * @param paras
     * @param <E>
     * @return
     * @throws SQLException
     */
    public static <E> List<E> find(Class<E> cls, String sql, Object...paras) throws SQLException {
        prepareStatement(sql);
        int len = paras.length;
        for(int i = 1; i <= len; len++) {
            preparedStatement.setObject(i , paras[i - 1]);
        }
        preparedStatement.execute();
        resultSet = preparedStatement.getResultSet();
        List<E> list = mappingToBean(cls);
        closeCon();
        return list;
    }

    /**
     * example
     * @param columns "id, user"
     * @param cls 需要返回的cls
     * @param paras
     * @param <E>
     * @return
     * @throws SQLException
     */
    public static <E> List<E> find(String columns, Class<E> cls, Object...paras) throws Exception {
        String table = BeanUtils.tableNmae(cls);
        StringBuilder sqlBuilder = new StringBuilder("SELECT * FROM " + table);
        String[] cols = columns != null ? columns.split(",") : new String[]{};

        if(cols.length != paras.length)
            throw new Exception("列数与参数数量长度不一致");
        for(int i = 0; i < cols.length; i++) {
            if(i == 0)
                sqlBuilder.append(" WHERE ");

            if(i != cols.length - 1)
                sqlBuilder.append(cols[i]).append(" = ").append("?").append(" AND");
            else
                sqlBuilder.append(cols[i]).append(" = ").append("?");
        }
        prepareStatement(sqlBuilder.toString());
        int len = paras.length;
        for(int i = 1; i <= len; len++) {
            preparedStatement.setObject(i , paras[i - 1]);
        }
        preparedStatement.execute();
        resultSet = preparedStatement.getResultSet();
        List<E> list = mappingToBean(cls);
        closeCon();
        return list;
    }

    /**
     * 增删改
     * @param sql
     * @return
     * @throws SQLException
     */
    public static int executeUpdate(String sql) throws SQLException {
        int result = statement().executeUpdate(sql);
        closeCon();
        return result;
    }

    /**
     * 增删改
     * @param sql
     * @param paras
     * @return
     * @throws SQLException
     */
    public static int executeUpdate(String sql, Object...paras) throws SQLException {
        prepareStatement(sql);
        int len = paras.length;
        for(int i = 1; i <= len; len++) {
            preparedStatement.setObject(i , paras[i - 1]);
        }
        int result = preparedStatement.executeUpdate();
        closeCon();
        return result;
    }
}
