<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<title>Welcome To Book Outlet</title>
</head>
<body>
	<h3>Sign Up To BookOutlet</h3>
	<form action="../auth/adduser" method="POST">


		
				
			
				

					<label><b>Name</b></label> <input  type="text"
						placeholder="Enter name" name="name" required>
									
					<label><b>UserName</b></label> <input  type="text"
						placeholder="Enter Username" name="username" required>

				
					<label><b>Password</b></label> <input 
						type="password" placeholder="Enter Password" name="password" required>
				
				
					<label><b>mobileNumber</b></label> <input 
						type="text" placeholder="Enter mobileNumber" name="mobileno" required>
				
					<label><b>emailID</b></label> <input  type="text"
						placeholder="Enter emailID" name="emailid" required>
			

<button  type = "submit">Register</button>
					



			
	</form>
</body>
</html>