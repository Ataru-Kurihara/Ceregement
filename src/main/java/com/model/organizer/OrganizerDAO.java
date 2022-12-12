package com.model.organizer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
import com.Utils.*;
public class OrganizerDAO {
    Scanner scanner = new Scanner(System.in);
    final private static String dbname = "ceregementdb";
    final private static String dbUser = "ceregement";
    final private static String password = "ceregement";
    final private static String sqlHostname = "localhost";
    final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
    final private static String driverClassName = "org.postgresql.Driver";


    public static void addDatas(Organizer organizer) {
        Connection connection;
        PreparedStatement preparedStatement;
        String sql = "insert into ceregementdb.public.organizer values(?, ?, ?, ?, ?)";
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, organizer.getId());
            preparedStatement.setString(2, organizer.getMailAddress());
            preparedStatement.setString(3, organizer.getName());
            preparedStatement.setString(4, organizer.getAddress());
            preparedStatement.setString(5, organizer.getTel());

            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
