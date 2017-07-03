package com.venilla.user;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String username;
	private String password;
	private long mobileno;
	private String emailid;
	private String active;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserName() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Long getMobileno() {
		return mobileno;
	}
	public void setMobileno(Long mobileno) {
		this.mobileno = mobileno;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public User()
	{
	}
public User( String name,String username,String password,long mobileno,String emailid, String active) 
	{
		
		
		this.name = name;
		this.username = username;
		this.password = password;
		this.mobileno = mobileno;
		this.emailid = emailid;
		this.active = "A";
	}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", username=" + username + ", password=" + password + ", mobileno="
			+ mobileno + ", emailid=" + emailid + ", active=" + active + "]";
}

	
	
	}

	


