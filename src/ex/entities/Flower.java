package ex.entities;

public class Flower {
	private int id;
	private int idService;
	private String avatar;
	private int amount;
	private String name;
	private int price;
	public Flower(String avatar, int amount, String name, int price) {
		super();
		this.avatar = avatar;
		this.amount = amount;
		this.name = name;
		this.price = price;
	}
	public Flower() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getIdService() {
		return idService;
	}
	public void setIdService(int idService) {
		this.idService = idService;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id + " "  + idService +" "+ amount +" " + name + " " + price;
	}
	
	
}
