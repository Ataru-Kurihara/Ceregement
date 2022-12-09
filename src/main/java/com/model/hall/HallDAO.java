package com.model.hall;

import java.sql.*;

public class HallDAO {
    final private static String dbname = "ceregementdb";
    final private static String dbUser = "postgres";
    final private static String password = "20fi035";
    final private static String sqlHostname = "localhost";
    final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
    final private static String driverClassName = "org.postgresql.Driver";

    public static void addDatas(String id, String deadName, String deathDay, String address, String hallName, String funeralDay) throws SQLException {
        Connection connection;
        String sql = "insert into public.Hall values (id, deadName, deathDay, address, hallName, funeralDay)";
        Statement statement = null;
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            statement = connection.createStatement();
            statement.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                statement.close();
                statement = null;
            }
        }
    }

    public static int checkIndex() throws SQLException {
        int index = 0;
        Connection connection;
        String sql = "select count(*) from public.user";
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                index = resultSet.getInt("count");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return index;
    }
}
