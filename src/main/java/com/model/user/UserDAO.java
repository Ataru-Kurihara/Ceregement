package com.model.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	final private static String dbname = "ceregementdb";
	final private static String dbUser = "ceregement";
	final private static String password = "ceregement";
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

	public static int getId(User user) {
		int id = 0;
		Connection connection;
		PreparedStatement preparedStatement;
		String sql = "select regnumber from public.user where mailaddress = ?";
		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, dbUser, password);
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getMailAddress());

			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				id = resultSet.getInt("regnumber");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
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

	public void insert(User u) {
		Connection connection;
		String sql = "INSERT INTO public.user (secretid, mailAddress, password, regNumber) VALUES (?, ?, ?, ?)";

		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, dbUser, password);
			PreparedStatement pstmt = connection.prepareStatement(sql);
			int secretIdInt = Integer.parseInt(u.getSecretId());
			int regNumber = Integer.parseInt(u.getRegNumber());
			pstmt.setInt(1, secretIdInt);
			pstmt.setString(2, u.getMailAddress());
			pstmt.setString(3, u.getPassword());
			pstmt.setInt(4, regNumber);
			pstmt.executeUpdate();
			System.out.println("UserDAO.javaでINSERT実行");
			connection.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
