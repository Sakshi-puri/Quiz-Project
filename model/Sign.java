package com.quize.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Sign 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String email;
	private String  password;
	private String name;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Sign(String email, String password, String name) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
	}
	@Override
	public String toString() {
		return "Sign [id=" + id + ", email=" + email + ", password=" + password + ", name=" + name + "]";
	}
	public Sign() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
