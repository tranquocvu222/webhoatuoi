package ex.entities;

import java.io.Serializable;
import java.util.ArrayList;


public class Order implements Serializable {
	private int id;
	private User customer;
	private ArrayList<Item> items;
	private int status;
	public Order(int id, User customer, ArrayList<Item> items, int status) {
		super();
		this.id = id;
		this.customer = customer;
		this.items = items;
		this.status = status;
	}
	public Order() {
		this.status = 0;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getCustomer() {
		return customer;
	}
	public void setCustomer(User customer) {
		this.customer = customer;
	}
	public ArrayList<Item> getItems() {
		return items;
	}
	public void setItems(ArrayList<Item> items) {
		this.items = items;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
