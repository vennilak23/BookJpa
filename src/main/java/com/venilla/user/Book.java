package com.venilla.user;



import java.time.LocalDate;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.Table;



@Entity
@Table(name="book")


public class Book {
	
				
	@Id
	@GeneratedValue
	private  int id;
	@Column(name="title")
	private String name;
	private String author;
private LocalDate publishdate;
	public LocalDate getPublishdate() {
	return publishdate;
}
public void setPublishdate(LocalDate publishdate) {
	this.publishdate = publishdate;
}
	private String content;
	private double price;
	private String status;

	
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

	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
