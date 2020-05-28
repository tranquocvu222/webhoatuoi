package ex.connect;

import java.sql.Connection;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import ex.entities.User;

import java.sql.DriverManager;
import java.sql.ResultSet;

public class ConnectionUtils {
	public static Connection getMyConnection() throws ClassNotFoundException, SQLException {
		String hostName = "localhost";
		String dbName = "web";
		String userName = "sa";
		String password = "1234";
		return getMyConnection(hostName, dbName, userName, password);
	}

	public static Connection getMyConnection(String hostName, String dbName, String userName, String password)
			throws SQLException, ClassNotFoundException {
		Class.forName("net.sourceforge.jtds.jdbc.Driver");

		String connectionURL = "jdbc:jtds:sqlserver://" + hostName + ":63160;" + ";databaseName=" + dbName + ";";

		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}

	public static void main(String[] args) {
		ArrayList<User> listUser = new ArrayList<User>();
		Connection conn = null;
		try {

			conn = getMyConnection();
			String sql = "select *from Users";
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			System.out.println("Information News and Catelogies");
			while (rs.next()) {
				int id = rs.getInt("Id");
				String fullname = rs.getString("Fullname");
				String email = rs.getString("Email");
				String name = rs.getString("Username");
				String pass = rs.getString("Pass");
				String address = rs.getString("Address");
				String phone = rs.getString("Phone");
				int role = rs.getInt("Role");
				User user = new User(fullname, name, pass, email, address,phone,role);
				listUser.add(user);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		for (User obj : listUser) {
			System.out.println(obj.toString() + ", ");
		}

		System.out.println("Connection succesfull " + conn);
	}
}
