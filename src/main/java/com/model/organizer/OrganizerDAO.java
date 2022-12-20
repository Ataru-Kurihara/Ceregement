package com.model.organizer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrganizerDAO {
	final private static String dbname = "ceregementdb";
	final private static String dbUser = "ceregement";
	final private static String password = "ceregement";
	final private static String sqlHostname = "localhost";
	final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
	final private static String driverClassName = "org.postgresql.Driver";

	public static void addData(Organizer organizer) {
		Connection connection;
		PreparedStatement preparedStatement;
		String sql_insert = "insert into ceregementdb.public.organizer values(?, ?, ?, ?, ?)";
		String sql_update = "UPDATE public.organizer SET id=?, postalcode=?, name=?, address=?, tel=? WHERE id=?";
		boolean result = false;
		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, dbUser, password);
			result = check(organizer.getId());
			if (result) {
				preparedStatement = connection.prepareStatement(sql_update);
				preparedStatement.setString(1, organizer.getId());
				preparedStatement.setString(2, organizer.getPostalCode());
				preparedStatement.setString(3, organizer.getName());
				preparedStatement.setString(4, organizer.getAddress());
				preparedStatement.setString(5, organizer.getTel());
				preparedStatement.setString(6, organizer.getId());
				preparedStatement.executeUpdate();
				preparedStatement.close();
			} else {
				preparedStatement = connection.prepareStatement(sql_insert);
				preparedStatement.setString(1, organizer.getId());
				preparedStatement.setString(2, organizer.getPostalCode());
				preparedStatement.setString(3, organizer.getName());
				preparedStatement.setString(4, organizer.getAddress());
				preparedStatement.setString(5, organizer.getTel());
				preparedStatement.executeUpdate();
				preparedStatement.close();
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static boolean check(String id) {
		boolean result = false;
		Connection connection;
		String sql = "SELECT * FROM public.organizer WHERE id = ?";
		try {
			Class.forName(driverClassName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			connection = DriverManager.getConnection(url, dbUser, password);
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				result = true;
				rs.close();
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;

	}

	public static List<String> getData(String id) {
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

			preparedStatement.close();
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return datas;
	}
}
