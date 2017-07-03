<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>List All Orders</title>
<style>
</style>
</head>
<body>
	<div class="container">
<h2>Rounded Corners</h2>
  <p>The .img-rounded class adds rounded corners to an image (not available in IE8):</p>            
  <img src="cinqueterre.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236">
  <h2>welcome to citbookapp</h2>
  <h4>list of books</h4>
   <button><a href="logout" class="btn btn-info" role="button">logout</a></button> 
             
  <table class="table table-bordered">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong><i class="fa fa-list"></i> All Orders</strong>
					</div>
					<div class="panel-body">
						<table id="ordersTbl" border="1"
							class="table table-striped table-bordered">
							<thead>
								<tr>
									<th width="10%">Order Id</th>
									<th>Customer Name</th>
									<th>Items</th>
									<th>Order Amount </th>
									<th>Status</th>									
									<th>Ordered Date</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ORDERS_LIST}" var="order">
									<tr>
										<td>${order.id}</td>
										<td>${order.user.name}</td>
										<td>
											<ul>
												<c:forEach items="${order.orderItems}" var="item">
													<li>${item.book.name}(Quantity-${item.quantity})</li>
												</c:forEach>
											</ul>
										</td>
										<td>Rs. ${order.totalPrice} </td>
										<td>${order.status}</td>
										<td>${order.orderedDate }</td>
										

										<c:if
											test="${order.status !='CANCELLED' && order.status != 'DELIVERED'}">
											<td><a
												href="../orders/updateStatus?id=${order.id}&status=DELIVERED"
												class="btn btn-success btn-sm">Deliver Order </a></td>
										</c:if>
										<c:if test="${order.status == 'ORDERED'}">
											<td><a
												href="../orders/updateStatus?id=${order.id}&status=CANCELLED"
												class="btn btn-danger btn-sm">Cancel Order </a></td>
										</c:if>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#ordersTbl").DataTable();
		});
	</script>
</body>
</html>