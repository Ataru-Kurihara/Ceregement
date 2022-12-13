import com.model.hall.Hall;
import com.model.hall.HallDAO;
import com.model.user.User;
import com.model.user.UserDAO;

import java.sql.*;

import static com.model.hall.HallDAO.getCeregementId;


public class dbTest {
    final private static String dbname = "ceregementdb";
    final private static String dbUser = "ceregement";
    final private static String password = "ceregement";
    final private static String sqlHostname = "localhost";
    final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
    final private static String driverClassName = "org.postgresql.Driver";
    public static void main(String[] args) throws SQLException {
        System.out.println(UserDAO.checkIndex());
    }
}
