package com.model.participant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    public static List<String> getMailAddress(String id) {
        Connection connection;
        PreparedStatement preparedStatement;
        String sql = "select mailaddress from ceregementdb.public.participant where id = ?";
        List<String> mailAddresses = new ArrayList<>();
        String mailaddress = "";
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                mailaddress = resultSet.getString("mailaddress");
                mailAddresses.add(mailaddress);
            }
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mailAddresses;
    }



    public static List<String> getData(String mailAddress, Participant participant) {
        Connection connection;
        PreparedStatement preparedStatement;

        String sql = "select name, address, tel, attend, gift from ceregementdb.public.participant where mailaddress = ?";
        String name = "", address = "", tel = "", attend = "", gift = "";
        List<String> data = new ArrayList<String>();
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, mailAddress);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                name = resultSet.getString("name");
                address = resultSet.getString("address");
                tel = resultSet.getString("tel");
                attend = resultSet.getString("attend");
                gift = resultSet.getString("gift");
                data.add(name);
                data.add(address);
                data.add(tel);
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

    public boolean check(String id) throws SQLException {
        boolean result = false;
        Connection connection;
        String sql = "select * from ceregementdb.public.participant where id = ?";
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next())
                result = true;


            resultSet.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}