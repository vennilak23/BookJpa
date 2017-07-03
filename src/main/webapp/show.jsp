<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 

<title>show</title>
</head>
<body>


  <h2>welcome to BookApp</h2>
  <h4>list of books</h4>
   <button><a href="logout"  role="button">logout</a></button> 
              
  <table border="1">
  
	
	
		<form action="../orderitems/addtocart" method="POST">
<thead>
		<tr>
			<th>id</th>
			<th>title</th>
			<th>author</th>
			<th>content</th>
			<th>status</th>
			<th>price</th>
		
			<th>Quantity</th>
			
			
		</tr>
		 </thead>
		<tbody>
			<tr>
				<td>${selectedbook.id}</td>
				<td>${selectedbook.name}</td>
				<td>${selectedbook.author}</td>
				<td>${selectedbook.content}</td>
				<td>${selectedbook.status}</td>
				<td>${selectedbook.price}</td>
				
			
  	<td><input type="number" name="quantity"  min="0" max="100" step="1" value="0"/></td>
				<td><button type="submit">add to cart</button></td>
		
										<td><input type="hidden" name="bookid"
											value="${selectedbook.id}" /></td>
									
										
					
									
								
										
									

									
										
									
			</tr>
		</tbody>
		</table>								
		
</body>
</html>