package ex.entities;

import java.io.Serializable;

public class User implements Serializable{
	private int id;
	private String fullName;
	private String name;
	private String pass;
	private String email;
	private String address;
	private String phone;
	private int role;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public User(String fullName, String name, String pass, String email, String address, String phone,
			int role) {
		super();
		
		this.fullName = fullName;
		this.name = name;
		this.pass = pass;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.role = role;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	


	public String getFullName() {
		return fullName;
	}



	public void setFullName(String fullName) {
		this.fullName = fullName;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id + " "  + fullName +" "+ email +" " + name + " " + pass + " " +address+" "+phone+" "+ role;
	}

	
}