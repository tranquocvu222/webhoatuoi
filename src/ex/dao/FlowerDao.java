package ex.dao;

import java.util.ArrayList;
import ex.entities.Flower;



public interface FlowerDao {
	public ArrayList<Flower> getAll();
	public ArrayList<Flower> findFlowerByName(String Name);
	public ArrayList<Flower> findFlowerByPrice(int price1, int price2);
	public Flower findFlowerById(int Id);
	public void editFlower(Flower flower);
	public void deleteFlower(int id);
	public void addFlower(Flower flower);
}