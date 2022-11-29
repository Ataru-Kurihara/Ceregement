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
        Connection conn = null;
        Statement stmt = null;
        ResultSet rset = null;
//        String sql = "select * from user";
        try {
            //PostgreSQLへ接続
            conn = DriverManager.getConnection(url, dbUser, password);

            //自動コミットOFF
            conn.setAutoCommit(false);

            //SELECT文の実行
            stmt = conn.createStatement();
            String sql = "SELECT * from public.user";
            rset = stmt.executeQuery(sql);

            //SELECT結果の受け取り
            while(rset.next()){
                String col = rset.getString("password");
                System.out.println(col);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {
            try {
                if(rset != null)rset.close();
                if(stmt != null)stmt.close();
                if(conn != null)conn.close();
            }
            catch (SQLException e){
                e.printStackTrace();
            }

        }
    }
}
