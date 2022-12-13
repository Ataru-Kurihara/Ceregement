package com.model.organizer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import com.Utils.*;
import com.model.user.User;
import com.model.user.UserDAO;

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
            preparedStatement.setString(2, organizer.getPostalCode());
            preparedStatement.setString(3, organizer.getName());
            preparedStatement.setString(4, organizer.getAddress());
            preparedStatement.setString(5, organizer.getTel());
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<String> getDatas(String id) {
        Connection connection;
        PreparedStatement preparedStatement;
        String sql = "select postalcode, name, address, tel from public.organizer where id = ?";
        String postalcode = "", name = "", address = "", tel = "";
        List<String> datas = new ArrayList<>();
        try {
            Class.forName(driverClassName);
            connection = DriverManager.getConnection(url, dbUser, password);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                postalcode = resultSet.getString("postalcode");
                name = resultSet.getString("name");
                address = resultSet.getString("address");
                tel = resultSet.getString("tel");
                datas.add(postalcode);
                datas.add(name);
                datas.add(address);
                datas.add(tel);
            }
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return datas;
    }
}
