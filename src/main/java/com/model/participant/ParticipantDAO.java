package com.model.participant;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ParticipantDAO {
    final private static String dbname = "ceregementdb";
    final private static String dbUser = "ceregement";
    final private static String password = "ceregement";
    final private static String sqlHostname = "localhost";
    final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
    final private static String driverClassName = "org.postgresql.Driver";

    public static void addData(Participant participant) {
        Connection connection;
        PreparedStatement preparedStatement;
        String sql = "insert into ceregementdb.public.participant values(?, ?, ?, ?, ?, ?, ?)";
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, participant.getMailAddress());
            preparedStatement.setString(2, participant.getFullName());
            preparedStatement.setString(3, participant.getPostalCode() + " " + participant.getDetailAddress());
            preparedStatement.setString(4, participant.getTel());
            preparedStatement.setString(5, participant.getAttend());
            preparedStatement.setString(6, participant.getGift());
            preparedStatement.setString(7, participant.getId());
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<String> getData(Participant participant) {
        Connection connection;
        PreparedStatement preparedStatement;
        String sql = "select name, address,tell, attend, gift from ceregementdb.public.participant where id = ?";
        String name = "", address = "", tell = "", attend = "", gift = "";
        List<String> data = new ArrayList<>();
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, participant.getMailAddress());
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                name = resultSet.getString("name");
                address = resultSet.getString("address");
                tell = resultSet.getString("tell");
                attend = resultSet.getString("attend");
                gift = resultSet.getString("gift");
                data.add(name);
                data.add(address);
                data.add(tell);
                data.add(attend);
                data.add(gift);
            }
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return data;
    }
}