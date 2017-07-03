package com.venilla.controller;

import java.time.LocalDate;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.venilla.service.OrderService;
import com.venilla.user.Order;
import com.venilla.user.User;








	@Controller
	@RequestMapping("orders")
	public class OrderController {

		@Autowired
		private OrderService orderService;


		@GetMapping("/myorders")
		public String myOrders(ModelMap modelMap, HttpSession session) {

			User loggedInUser = (User) session.getAttribute("loggedinuser");
			List<Order> list = orderService.findByUserIdOrderByIdDesc(loggedInUser.getId());
			modelMap.addAttribute("MY_ORDERS", list);
			return "listmyorders";

		}
		
		@GetMapping
		public String list(ModelMap modelMap, HttpSession session) {

			List<Order> list = orderService.findAllOrders();
			System.out.println("orders:"+ list.size());
			for (Order order : list) {
				System.out.println(order);
			}
			modelMap.addAttribute("ORDERS_LIST", list);
			return "list";

		}

		@PostMapping("/save")
		public String save(@RequestParam("total_amount") double totalAmount, HttpSession session) {
System.out.println("save");
			Order orderInCart = (Order) session.getAttribute("MY_CART_ITEMS");
			if ( orderInCart != null && orderInCart.getOrderItems().size() > 0) {
				orderInCart.setTotalPrice(totalAmount);
				orderService.save(orderInCart);
				session.removeAttribute("MY_CART_ITEMS");			
			}
					
			return "redirect:../orders/myorders";
		}
		
		@GetMapping("/updateStatus")
		public String updateStatus(@RequestParam("id") Long orderId , @RequestParam("status")String status ) {
			Order order = orderService.findOne(orderId);
			if ("CANCELLED".equals(status) ) {
				order.setCancelledDate(LocalDate.now());
			}
			else if ("DELIVERED".equals(status)) {
				order.setDeliveredDate(LocalDate.now());
			}
			
			order.setStatus(status);
			orderService.save(order);	
			return "redirect:../orders/myorders";
		}
			@GetMapping("/cart")
		public String cart(){
			return "cart";
		}
	
	

}

