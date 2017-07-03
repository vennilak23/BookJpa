<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>


<title>List My Orders</title>

</head>
<body>


  <h2>welcome to citbookapp</h2>
   <button><a href="../auth/logout"  role="button">logout</a></button> 
             
  <table border ="1">
	
	
		

		
						
						
							<h2>MY ORDER</h2>
					
				
								
								<thead>
									<tr>
										<th width="10%">Order Id</th>
										<th>Order Items</th>
										<th>Amount</th>
										<th>Status</th>
										<th>Ordered Date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${MY_ORDERS}" var="order">
										<tr>
											<td>${order.id}</td>
											<td>
												<ul>
													<c:forEach items="${order.orderItems}" var="item">
														<li>${item.book.name}(Quantity - ${item.quantity} )</li>
													</c:forEach>
												</ul>
											</td>
											<td>Rs. ${order.totalPrice }</td>
											<td>${order.status}</td>
											<td>${order.orderedDate }</td>
											<c:if test="${order.status == 'ORDERED'}">
												<td><a
													href="../orders/updateStatus?id=${order.id}&status=CANCELLED"
													>Cancel Order </a></td>
											</c:if>

										</tr>
										
										

									</c:forEach>
									<tr>
										<td><a href="../auth/list" >Continue Shopping</a></td>
									</tr>
									
								</tbody>
					</table>
	<script>
		$(document).ready(function() {
			$("#ordersTbl").DataTable();
		});
	</script>
</body>
</html>