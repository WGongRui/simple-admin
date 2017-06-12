package xinqi.ren.simpleadmin.db;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by GongRui on 5/20/2017.
 */
public class DbConfig {

    private static DataSource ds;

    public static Connection getConnection() {

        try {
            return ds.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void init(DataSource dataSource) {
        ds = dataSource;
    }
}
