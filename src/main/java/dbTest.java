import com.model.User;
import com.model.UserDAO;

import java.sql.*;

public class dbTest {
    final private static String dbname = "ceregementdb";
    final private static String dbUser = "postgres";
    final private static String password = "20fi035";
    final private static String sqlHostname = "localhost";
    final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
    final private static String driverClassName = "org.postgresql.Driver";
    public static void main(String[] args) throws SQLException {
        User user = new User();

        System.out.println(UserDAO.checkIndex(user));
    }
}
