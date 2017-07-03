package com.venilla.user;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity

@Table(name="orders")
public class Order {
	@Id
	@GeneratedValue
	private Long id;

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public double getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public List<OrderItem> getOrderItems() {
		return orderItems;
	}


	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}


	public LocalDateTime getOrderedDate() {
		return orderedDate;
	}


	public void setOrderedDate(LocalDateTime orderedDate) {
		this.orderedDate = orderedDate;
	}


	public LocalDate getCancelledDate() {
		return cancelledDate;
	}


	public void setCancelledDate(LocalDate cancelledDate) {
		this.cancelledDate = cancelledDate;
	}


	public LocalDate getDeliveredDate() {
		return deliveredDate;
	}


	public void setDeliveredDate(LocalDate deliveredDate) {
		this.deliveredDate = deliveredDate;
	}


	@ManyToOne
	@JoinColumn(name="userid")
	private User user;


@Column(name=" totalprice")
	private double totalPrice;


	private String status;
	
	@OneToMany(mappedBy = "order", fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<OrderItem> orderItems = new ArrayList<>();
	
		@Column(name="ordereddate")
	private LocalDateTime orderedDate;
	
	@Column(name="cancelleddate")
	private LocalDate cancelledDate;
	
@Column(name=" delivereddate")
	private LocalDate deliveredDate;


}
