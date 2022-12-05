package com.model.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	final private static String dbname = "ceregementdb";
	final private static String dbUser = "postgres";
	final private static String password = "20fi035";
	final private static String sqlHostname = "localhost";
	final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
	final private static String driverClassName = "org.postgresql.Driver";

	public static boolean check(User user) throws SQLException {
		boolean result = false;
		Connection connection;
		String sql = "select * from public.user where mailaddress=? and password=?";
		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, dbUser, password);
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			//            preparedStatement.setString(1, user.getSecretId());
			preparedStatement.setString(1, user.getMailAddress());
			preparedStatement.setString(2, user.getPassword());

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

	//    public static boolean set(User user) throws SQLException {
	//        boolean result = false;
	//        Connection connection;
	//        String sql = "insert into public.user(mailaddress, password) values(?, ?, ?)";
	//        try {
	//            Class.forName(driverClassName);
	//            connection = DriverManager.getConnection(url, dbUser, password);
	//            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	//            preparedStatement.setString(1, user.getNewMailAddress());
	//            preparedStatement.setString(2, user.getNewPassWord());
	//        }catch (Exception e) {
	//            e.printStackTrace();
	//        }
	//        return result;
	//    }

	public static int checkIndex(User user) throws SQLException {
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

	public void insert(User u) {
		Connection connection;
		String sql = "INSERT INTO account (id, password) VALUES (?, ?)";

		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, dbUser, password);
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, u.getMailAddress());
			pstmt.setString(2, u.getPassword());
			pstmt.executeUpdate();
			System.out.println("UserDAO.javaでINSERT実行");
			connection.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}