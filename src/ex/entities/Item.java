package ex.entities;

import java.io.Serializable;

public class Item implements Serializable{
	private int id;
	private Flower flower;
	private int amount;
	private int price;
	public Item() {
		super();
	}
	public Item(int id, Flower flower, int amount, int price) {
		super();
		this.id = id;
		this.flower = flower;
		this.amount = amount;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Flower getFlower() {
		return flower;
	}
	public void setFlower(Flower flower) {
		this.flower = flower;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
