package ex.service.impl;

import java.util.ArrayList;
import ex.entities.User;
import ex.entities.Flower;
import ex.entities.Order;
import ex.dao.UserDao;
import ex.dao.impl.UserDaoImpl;
import ex.service.UserService;
import ex.dao.FlowerDao;
import ex.dao.OrderDao;
import ex.dao.impl.FlowerDaoImpl;
import ex.dao.impl.OrderDaoImpl;


public class UserServiceImpl implements UserService {
	UserDao userDao = new UserDaoImpl();
	FlowerDao flowerDao = new FlowerDaoImpl();
	OrderDao orderDao = new OrderDaoImpl();
	
	@Override
	public boolean checkLogin(User user) {
		if ("admin".equals(user.getName()) && "admin".equals(user.getPass())) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean checkAdmin(int role) {
		// TODO Auto-generated method stub
		if (role == 1) {
			return true;
		}
		return false;
	}

	@Override
	public ArrayList<User> getAll() {
		// TODO Auto-generated method stub
		ArrayList<User> listUser = new ArrayList<User>();
		listUser = userDao.getAll();
		return listUser;
	}
	@Override
	public User findUserByNameAndPass(String userName, String password) {
		User userOut = userDao.findUserByNameAndPass(userName, password);
		return userOut;
	}
	@Override
	public ArrayList<User> findUserByName(String userName) {
		ArrayList<User> listUser = new ArrayList<User>();
		listUser = userDao.findUserByName(userName);
		return listUser;
	}

	@Override
	public User findUserById(int Id) {
		User userOut = userDao.findUserById(Id);
		return userOut;
	}
	

	@Override
	public void editUser(User user) {
		userDao.editUser(user);
	}

	@Override
	public void deleteUser(int id) {
		userDao.deleteUser(id);
		
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
		
	}


	@Override
	public ArrayList<Flower> getAllFlower() {
		ArrayList<Flower> listFlower = new ArrayList<Flower>();
		listFlower = flowerDao.getAll();
		return listFlower;
	}


	@Override
	public ArrayList<Flower> findFlowerByName(String Name) {
		ArrayList<Flower> listFlower = new ArrayList<Flower>();
		listFlower = flowerDao.findFlowerByName(Name);
		return listFlower;
	}

	@Override
	public Flower findFlowerById(int Id) {
		Flower flowerOut = flowerDao.findFlowerById(Id);
		return flowerOut;
	}

	@Override
	public void editFlower(Flower flower) {
		flowerDao.editFlower(flower);
		
	}

	@Override
	public void deleteFlower(int id) {
		flowerDao.deleteFlower(id);
		
	}

	@Override
	public void addFlower(Flower flower) {
		flowerDao.addFlower(flower);
		
	}
	
	@Override
	public ArrayList<Flower> findFlowerByPrice(int price1, int price2) {
		ArrayList<Flower> listFlower = new ArrayList<Flower>();
		listFlower = flowerDao.findFlowerByPrice(price1, price2);
		return listFlower;
	}
	@Override
	public User findUserByUserName(String userName) {
		User userOut = userDao.findUserByUserName(userName);
		return userOut;
	}
	
	

	@Override
	public void addOrder(Order order) {
		orderDao.addOrder(order);
	}
	 public static void main(String[] args) {
		 UserService u = new UserServiceImpl();
//	 for(User obj : u.getAll()){ 
//          System.out.println(obj.toString() +", ");
//	        }
//		System.out.println( u.findUserByNameAndPass("vu", "12345").toString());
//		System.out.println(u.checkAdmin(u.getAll().get(0).getRole()));
//		 System.out.println(u.findUserById(1).toString());
		User user = u.findUserByUserName("ha");
		System.out.println(user.toString());
	 }


}
