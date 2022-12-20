package com.model.hall;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HallDAO {
	final private static String dbname = "ceregementdb";
	final private static String dbUser = "ceregement";
	final private static String password = "ceregement";
	final private static String sqlHostname = "localhost";
	final private static String url = "jdbc:postgresql://" + sqlHostname + "/" + dbname;
	final private static String driverClassName = "org.postgresql.Driver";

	public static void addData(Hall hall) {
		Connection connection;
		PreparedStatement preparedStatement;
		String sql_insert = "insert into public.hall values(?, ?, ?, ?, ?, ?)";
		String sql_update = "UPDATE public.hall SET id=?, deadname=?, deathday=?, address=?, hallname=?, funeralday=? WHERE id=?";
		boolean result = false;
		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, dbUser, password);
			result = check(hall.getId());
			if (result) {
				preparedStatement = connection.prepareStatement(sql_update);
				preparedStatement.setString(1, hall.getId());
				preparedStatement.setString(2, hall.getDeadName());
				preparedStatement.setString(3, hall.getDeathDay());
				preparedStatement.setString(4, hall.getAddress());
				preparedStatement.setString(5, hall.getHallName());
				preparedStatement.setString(6, hall.getFuneralDay());
				preparedStatement.setString(7, hall.getId());
				preparedStatement.executeUpdate();
				preparedStatement.close();
			} else {
				preparedStatement = connection.prepareStatement(sql_insert);
				preparedStatement.setString(1, hall.getId());
				preparedStatement.setString(2, hall.getDeadName());
				preparedStatement.setString(3, hall.getDeathDay());
				preparedStatement.setString(4, hall.getAddress());
				preparedStatement.setString(5, hall.getHallName());
				preparedStatement.setString(6, hall.getFuneralDay());
				preparedStatement.executeUpdate();
				preparedStatement.close();
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static List<String> getData(String id) {
		Connection connection;
		PreparedStatement preparedStatement;
		String sql = "select deadname, deathday, address, hallname, funeralday from public.hall where id = ?";
		String deadName = "", deathDay = "", address = "", hallName = "", funeralDay = "";
		List<String> info = new ArrayList<>();
		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, dbUser, password);
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				deadName = resultSet.getString("deadname");
				deathDay = resultSet.getString("deathday");
				address = resultSet.getString("address");
				hallName = resultSet.getString("hallname");
				funeralDay = resultSet.getString("funeralday");
				info.add(deadName);
				info.add(deathDay);
				info.add(hallName);
				info.add(address);
				info.add(funeralDay);
			}
			preparedStatement.close();
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return info;
	}

	public static String getCeregementId() throws SQLException {
		String ceregementID = "";
		Connection connection;
		String sql = "select ceregementid from public.hall";
		try {
			Class.forName(driverClassName);
			connection = DriverManager.getConnection(url, dbUser, password);
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ceregementID = resultSet.getString("ceregementid");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ceregementID;
	}

	public static boolean check(String id) {
		boolean result = false;
		Connection connection;
		String sql = "SELECT * FROM public.hall WHERE id = ?";
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
}
