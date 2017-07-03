<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>

<head>
<title>Welcome</title>
</head>
<body>



  <h2>welcome to BookApp</h2>
   <button><a href="logout"  role="button">logout</a></button> 
           
  <table border ="1">
    <thead>
      <tr>
        <th>ID</th>
        <th>TITLE</th>
        <th>PRICE</th>
        <th>VIEW</th>
      </tr>
    </thead>
    <tbody>
      
      <c:forEach items="${books}" var="book">
			<tr>
				<td>${book.id}</td>
				
				
				<td>${book.name}</td>
				<td>${book.price}</td>
				<td><a href="../auth/${book.id}">View</a></td>
      </tr>
      </c:forEach>
     
    </tbody>
  </table>


</body>
</html>