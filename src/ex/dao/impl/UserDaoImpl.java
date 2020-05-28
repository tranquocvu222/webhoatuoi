package ex.dao.impl;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import ex.connect.ConnectionUtils;
import ex.dao.UserDao;
import ex.entities.User;

public class UserDaoImpl extends ConnectionUtils implements UserDao {
	@Override
	public ArrayList<User> getAll() {
		ArrayList<User> listUser = new ArrayList<User>();
		Connection connection;
		try {
			connection = super.getMyConnection();
			String sql = "select *from Users";
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("Id");
				String fullname = rs.getString("Fullname");
				String email = rs.getString("Email");
				String name = rs.getString("Username");
				String pass = rs.getString("Pass");
				String address = rs.getString("Address");
				String phone = rs.getString("Phone");
				int role = rs.getInt("Role");
				User user = new User(fullname, name, pass, email, address, phone, role);
				user.setId(id);
				listUser.add(user);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listUser;
	}
	@Override
	public User findUserByNameAndPass(String userName, String password) {
		ArrayList<User> listUser = new ArrayList<User>();
		Connection connection ;
		try {
			connection = super.getMyConnection();
			String sql = "SELECT * FROM Users WHERE "
					+ "Username = '" + userName + "'"
					+ "AND Pass = '" + password + "'";
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int idd = rs.getInt("Id");
				String fullname = rs.getString("Fullname");
				String email = rs.getString("Email");
				String name = rs.getString("Username");
				String pass = rs.getString("Pass");
				String address = rs.getString("Address");
				String phone = rs.getString("Phone");
				int role = rs.getInt("Role");
				User user = new User(fullname, name, pass, email, address, phone, role);
				user.setId(idd);
				listUser.add(user);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;
	}

	@Override
	public ArrayList<User>findUserByName(String userName) {
		ArrayList<User> listUser = new ArrayList<User>();
		Connection connection;
		try {
			connection = super.getMyConnection();
			String sql = "SELECT *\r\n" + 
					"FROM Users\r\n" + 
					"WHERE Username LIKE '%"+userName+"%'"+"or Fullname LIKE '%"+userName+"%'";
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("Id");
				String fullname = rs.getString("Fullname");
				String email = rs.getString("Email");
				String name = rs.getString("Username");
				String pass = rs.getString("Pass");
				String address = rs.getString("Address");
				String phone = rs.getString("Phone");
				int role = rs.getInt("Role");
				User user = new User(fullname, name, pass, email, address, phone, role);
				user.setId(id);
				listUser.add(user);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (listUser != null && !listUser.isEmpty()) {
			return listUser;
		}
		return null;
	}

	@Override
	public User findUserById(int id) {
		// TODO Auto-generated method stub
		ArrayList<User> listUser = new ArrayList<User>();
		Connection connection;
		try {
			connection = super.getMyConnection();
			String sql = "Select *from Users where id = " + "'" + id + "'";
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int idd = rs.getInt("Id");
				String fullname = rs.getString("Fullname");
				String email = rs.getString("Email");
				String name = rs.getString("Username");
				String pass = rs.getString("Pass");
				String address = rs.getString("Address");
				String phone = rs.getString("Phone");
				int role = rs.getInt("Role");
				User user = new User(fullname, name, pass, email, address, phone, role);
				user.setId(idd);
				listUser.add(user);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;
	}

	@Override
	public void editUser(User user) {
		String sql = "UPDATE Users SET " + "Address = '" + user.getAddress()+"',"+ "Phone = '" + user.getPhone() + "' WHERE Id = " + user.getId();
		System.out.print("sql");
		Connection conn;
		try {
			conn = super.getMyConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.executeUpdate();

		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	@Override
	public void deleteUser(int id) {
		String sql = "DELETE From Users WHERE Id = " + id;
		Connection conn;
		try {
			conn = super.getMyConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.executeUpdate();

		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	@Override
	public void addUser(User user) {
		String sql = "INSERT INTO Users(Fullname, Username, Pass, Email, Address,Phone, Role) VALUES(" + "'"
				+ user.getFullName() + "'," + "'" + user.getName() + "'," + "'" + user.getPass() + "'," + "'"
				+ user.getEmail() + "'," + "'" + user.getAddress() + "'," + "'" + user.getPhone() + "'," + "'"
				+ user.getRole() + "')";
		Connection conn;
		try {
			conn = super.getMyConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.executeUpdate();

		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}


	@Override
	public User findUserByUserName(String userName) {
		ArrayList<User> listUser = new ArrayList<User>();
		Connection connection ;
		try {
			connection = super.getMyConnection();
			String sql = "SELECT * FROM Users WHERE "
					+ "Username = N'" + userName + "'";
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int idd = rs.getInt("Id");
				String fullname = rs.getString("Fullname");
				String email = rs.getString("Email");
				String name = rs.getString("Username");
				String pass = rs.getString("Pass");
				String address = rs.getString("Address");
				String phone = rs.getString("Phone");
				int role = rs.getInt("Role");
				User user = new User(fullname, name, pass, email, address, phone, role);
				user.setId(idd);
				listUser.add(user);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;
	}
	public static void main(String[] args) {
		UserDao u = new UserDaoImpl();
		 for(User obj : u.findUserByName("ha")){ 
	          System.out.println(obj.toString() +", ");
	        }
	}

}