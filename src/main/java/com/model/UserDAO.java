package com.model;

import java.sql.*;

public class UserDAO {
    final private static String dbname = "tutorial";
    final private static String dbUser = "postgres";
    final private static String password = "mimi0901";
    final private static String sqlHostname = "localhost";
    final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
    final private static String driverClassName = "org.postgresql.Driver";

    public static boolean check(User user) throws SQLException {
        boolean result = false;
        Connection connection;
        String sql = "select * from account where id=? and password=?";
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setString(1, user.getSecretId());
            preparedStatement.setString(1, user.getMailAddress());
            preparedStatement.setString(2, user.getPassword());

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) result = true;

            resultSet.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
