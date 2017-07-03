package com.venilla.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.venilla.repository.BookRepository;
import com.venilla.repository.OrderItemRepository;
import com.venilla.user.OrderItem;

@Service
public class OrderItemService {



	@Autowired
	private OrderItemRepository orderItemRepository;
	
	@Autowired
	private BookRepository bookRepository;

	public void save(OrderItem orderItem) {
		orderItemRepository.save(orderItem);

}
}
