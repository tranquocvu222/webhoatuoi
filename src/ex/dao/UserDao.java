package ex.dao;

import java.util.ArrayList;
import ex.entities.User;


public interface UserDao {
	public ArrayList<User> getAll();
	public User findUserByNameAndPass(String userName, String password);
	public User findUserByUserName(String userName);
	public ArrayList<User> findUserByName(String userName);
	public User findUserById(int Id);
	public void editUser(User user);
	public void deleteUser(int id);
	public void addUser(User user);
}
