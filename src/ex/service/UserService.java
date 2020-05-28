package ex.service;
import java.util.ArrayList;

import ex.entities.Flower;
import ex.entities.Order;
import ex.entities.User;
public interface UserService {
	public boolean checkLogin(User user);
	public boolean checkAdmin(int role);
	public ArrayList<User> getAll();
	public User findUserByNameAndPass(String userName, String password);
	public ArrayList<User> findUserByName(String userName);
	public User findUserById(int Id);
	public void editUser(User user);
	public void deleteUser(int id);
	public void addUser(User user);
	public User findUserByUserName(String userName);
	public ArrayList<Flower> getAllFlower();
	public ArrayList<Flower> findFlowerByName(String Name);
	public ArrayList<Flower> findFlowerByPrice(int price1, int price2);
	public Flower findFlowerById(int Id);
	public void editFlower(Flower flower);
	public void deleteFlower(int id);
	public void addFlower(Flower flower);
	public void addOrder(Order order);
}