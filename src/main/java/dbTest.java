import com.model.hall.Hall;
import com.model.hall.HallDAO;
import com.model.user.User;
import com.model.user.UserDAO;

import java.sql.*;

import static com.model.hall.HallDAO.getCeregementId;
import static com.model.user.UserDAO.getId;

public class dbTest {
    final private static String dbname = "ceregementdb";
    final private static String dbUser = "postgres";
    final private static String password = "20fi035";
    final private static String sqlHostname = "localhost";
    final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
    final private static String driverClassName = "org.postgresql.Driver";
    public static void main(String[] args) throws SQLException {

    }
}
