package ex.dao.impl;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import ex.connect.ConnectionUtils;
import ex.dao.FlowerDao;
import ex.entities.Flower;
import ex.entities.User;


public class FlowerDaoImpl extends ConnectionUtils implements FlowerDao {

	@Override
	public ArrayList<Flower> getAll() {
		ArrayList<Flower> listFlower = new ArrayList<Flower>();
		Connection connection;
		try {
			connection = super.getMyConnection();
			String sql = "select *from Flowers";
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("Id");
				int idService = rs.getInt("Id_Service");
				String avatar = rs.getString("Avatar");
				int amount = rs.getInt("amount");
				String name = rs.getString("Name");
				int price = rs.getInt("Price");
				Flower flower = new Flower(avatar, amount, name, price);
				flower.setId(id);
				flower.setIdService(idService);
				listFlower.add(flower);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listFlower;
	}

	@Override
	public ArrayList<Flower> findFlowerByName(String Name) {
		ArrayList<Flower> listFlower = new ArrayList<Flower>();
		Connection connection;
		try {
			connection = super.getMyConnection();
			String sql = "SELECT *\r\n" + 
					"FROM Flowers inner join Service on Flowers.Id_Service = Service.Id\r\n" + 
					"WHERE Name LIKE N'%"+Name+"%'"+"or Service.Name_Service  LIKE N'%"+Name+"%'";
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("Id");
				int idService = rs.getInt("Id_Service");
				String avatar = rs.getString("Avatar");
				int amount = rs.getInt("amount");
				String name = rs.getString("Name");
				int price = rs.getInt("Price");
				Flower flower = new Flower(avatar, amount, name, price);
				flower.setId(id);
				flower.setIdService(idService);
				listFlower.add(flower);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (listFlower != null && !listFlower.isEmpty()) {
			return listFlower;
		}
		return null;
	}

	@Override
	public Flower findFlowerById(int Id) {
		ArrayList<Flower> listFlower = new ArrayList<Flower>();
		Connection connection;
		try {
			connection = super.getMyConnection();
			String sql = "SELECT * FROM Flowers WHERE " + "Id = '" + Id + "'" ;
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("Id");
				int idService = rs.getInt("Id_Service");
				String avatar = rs.getString("Avatar");
				int amount = rs.getInt("amount");
				String name = rs.getString("Name");
				int price = rs.getInt("Price");
				Flower flower = new Flower(avatar, amount, name, price);
				flower.setId(id);
				flower.setIdService(idService);
				listFlower.add(flower);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (listFlower != null && !listFlower.isEmpty()) {
			return listFlower.get(0);
		}
		return null;
	}

	@Override
	public void editFlower(Flower flower) {
		String sql = "UPDATE Flowers SET " + "Id_Service = '" + flower.getIdService()+"',"+ "Avatar = '" + flower.getAvatar() 
					+ "' ,amount  = '" + flower.getAmount() +"' , Name = '" + flower.getName()+ "' ,Price = '" + flower.getPrice()+
						"' WHERE Id = " + flower.getId();
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
	public void deleteFlower(int id) {
		String sql = "DELETE From Flowers WHERE Id = " + id;
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
	public void addFlower(Flower flower) {
		String sql = "INSERT INTO Flowers(Id_Service,Avatar, amount, Name, Price) VALUES(" + "'"
				+ flower.getIdService()+ "'," + "'" + flower.getAvatar() + "'," + "'" + flower.getAmount() + "'," + "'"
				+ flower.getName() + "'," + "'" + flower.getPrice()  + "')";
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
	public ArrayList<Flower> findFlowerByPrice(int price1, int price2) {
		ArrayList<Flower> listFlower = new ArrayList<Flower>();
		Connection connection;
		try {
			connection = super.getMyConnection();
			String sql = "SELECT * \r\n" + 
					"FROM Flowers\r\n" + 
					"WHERE Price BETWEEN "+price1+"AND "+price2;
			Statement statement = ((java.sql.Connection) connection).createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("Id");
				int idService = rs.getInt("Id_Service");
				String avatar = rs.getString("Avatar");
				int amount = rs.getInt("amount");
				String name = rs.getString("Name");
				int price = rs.getInt("Price");
				Flower flower = new Flower(avatar, amount, name, price);
				flower.setId(id);
				flower.setIdService(idService);
				listFlower.add(flower);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (listFlower != null && !listFlower.isEmpty()) {
			return listFlower;
		}
		return null;
	}
	public static void main(String [] args) {
		FlowerDao flowerDao = new FlowerDaoImpl();
		for(Flower flower : flowerDao.getAll()) {
			System.out.println(flower.toString()+"");
		}
	
	}

}
