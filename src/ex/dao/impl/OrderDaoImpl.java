package ex.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import ex.connect.ConnectionUtils;
import ex.dao.OrderDao;
import ex.entities.Item;
import ex.entities.Order;
import ex.entities.User;


public class OrderDaoImpl extends ConnectionUtils implements OrderDao {

	@Override
	public ArrayList<Order> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void editOrder(Order order) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOrder(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addOrder(Order order) {
		ArrayList<Item> listItems = new ArrayList<Item>();
		listItems = order.getItems();
		for(Item item : listItems) {
		String sql = "INSERT INTO Orders(Id_user,Id_flower, number_buy, price, id_status) VALUES(" + "'"
				+ order.getCustomer().getId()+ "'," + "'" + item.getFlower().getId() + "'," + "'" + item.getAmount() + "'," + "'"
				+ item.getAmount()*item.getPrice()+"'," + "'" + order.getStatus() +  "')";
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
	}
		

	@Override
	public User findOderById(int Id) {
		// TODO Auto-generated method stub
		return null;
	}

}
