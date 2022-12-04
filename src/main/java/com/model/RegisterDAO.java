package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDAO {

	final private static String dbname = "tutorial"; // Postgre SQL DB name
	final private static String user = "nagahama"; // Postgre SQL user name
	final private static String password = "arifumi"; // Postgre SQL password
	final private static String sqlHostname = "localhost";
	final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
	final private static String driverClassName = "org.postgresql.Driver";

	public void insert(User u) throws SQLException {
		Connection connection;
		String sql = "INSERT INTO account (id, password) values (?, ?)";

		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, u.getMailAddress());
			pstmt.setString(2, u.getPassword());

			pstmt.executeUpdate();
			System.out.println("RegisterDAO.javaにて、insert実行");
			connection.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}
