

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<html>
<head>
 
<title>List</title>
<style>
</style>
</head>
<body>



  <h2>welcome to BookApp</h2>
   <button><a href="../auth/logout"  role="button">logout</a></button> 
             
  <table border="1">
	
	

			
					<h2>My Cart</h2>
					<c:if test="${empty MY_CART_ITEMS || MY_CART_ITEMS.orderItems.isEmpty()}">
						
						<h5>Your Shopping Cart is empty</h5>
						<a href="../books">Continue Shopping</a>
					</c:if>
					<c:if test="${!empty MY_CART_ITEMS && !MY_CART_ITEMS.orderItems.isEmpty()}">
						<table border="1" >
							<thead>
								<tr>
									<th width="10%">id</th>
									<th>Item Name</th>
									<th>Quantity</th>
									<th>Total Cost</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item"
									varStatus="loop">
									<tr>
										<td>${loop.index+1}</td>
										<td>${item.book.name}</td>
										<td>${item.quantity}</td>
										<td>Rs.${item.book.price*item.quantity }</td>
										<td><a href="../orderItems/remove?id=${loop.index+1}"
											>Remove</a>
											
											
									</tr>
								</c:forEach>
							</tbody>
						</table>


						<br />
						<a href="../auth/list">Continue Shopping</a>


					</c:if>
			

				<c:if test="${ MY_CART_ITEMS != null && MY_CART_ITEMS.orderItems.size()>0}">
					
						<b>Price Details</b>

						<c:set var="no_of_items"
							value="${MY_CART_ITEMS.orderItems.size()}" />
						<c:set var="total_amount" value="0" />
						<c:forEach items="${MY_CART_ITEMS.orderItems}" var="item">
							<c:set var="total_amount"
								value="${total_amount + item.book.price*item.quantity}" />
						</c:forEach>

						<form name="orderForm" action="../orders/save" method="post">
							<input type="hidden" name="total_amount" value="${total_amount}" />
							<table border="1" >

								<tbody>
									<tr>
										<td>Price ( ${no_of_items != null ?no_of_items:0} items )</td>
										<td>Rs. ${total_amount}</td>
									</tr>
									<tr>
										<td>Delivery Charges</td>
										<td>FREE</td>
									</tr>
									<tr>
										<th><b>Amount Payable </b></th>
										<th><b>Rs. ${total_amount}</b></th>
									</tr>
									<tr>
										<td >
										
										<button type="submit" 
											 >Place an Order</button></td>
									</tr>
								</tbody>
							</table>
						</form>
					
				</c:if>
			
		
	
</body>
</html>