package ex.dao;

import java.util.ArrayList;
import ex.entities.Flower;
import ex.entities.User;
import ex.entities.Item;
import ex.entities.Order;

public interface OrderDao {
	public ArrayList<Order> getAll();
	public void editOrder(Order order);
	public void deleteOrder(int id);
	public void addOrder(Order order);
	public User findOderById(int Id);
}
