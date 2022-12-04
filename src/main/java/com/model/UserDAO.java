package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	final private static String dbname = "tutorial";
	final private static String dbUser = "nagahama";
	final private static String password = "arifumi";
	final private static String sqlHostname = "localhost";
	final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
	final private static String driverClassName = "org.postgresql.Driver";

	public static boolean check(User user) throws SQLException {
		boolean result = false;
		Connection connection;
		String sql = "select * from public.account where id=? and password=?";
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

	public static String getEmail() {
		String email = null;

		return email;
	}
}
