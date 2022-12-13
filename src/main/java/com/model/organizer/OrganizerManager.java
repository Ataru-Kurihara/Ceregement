package com.model.organizer;

import com.model.user.User;
import com.model.user.UserDAO;

import java.sql.*;

public class OrganizerManager {
    final private static String dbname = "ceregementdb";
    final private static String dbUser = "ceregement";
    final private static String password = "ceregement";
    final private static String sqlHostname = "localhost";
    final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
    final private static String driverClassName = "org.postgresql.Driver";
    public static boolean check(User user) throws SQLException {
        boolean result = false;
        Connection connection;
        UserDAO dao = new UserDAO();
        String id  = UserDAO.getSecretIdRegNumber(user, "secretid");
        int count = 0;
        String sql = "select count(*) from public.organizer where id = ?";
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                count = resultSet.getInt("count");
            }
            if (count == 1) result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
