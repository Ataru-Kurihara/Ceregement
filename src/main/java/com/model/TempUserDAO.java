package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TempUserDAO {
	final private static String dbname = "tutorial";
	final private static String user = "nagahama";
	final private static String password = "arifumi";
	final private static String sqlHostname = "localhost";
	final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
	final private static String driverClassName = "org.postgresql.Driver";

	public boolean check(String email) throws SQLException, ClassNotFoundException {
		boolean result = false;
		Connection connection;
		String sql = "SELECT * FROM account WHERE id = ?";
		Class.forName(driverClassName);
		connection = DriverManager.getConnection(url, user, password);
		PreparedStatement pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, email);
		ResultSet resultSet = pstmt.executeQuery();
		if (!resultSet.next()) {
			result = true;
		}
		resultSet.close();
		connection.close();
		return result;
	}

}
