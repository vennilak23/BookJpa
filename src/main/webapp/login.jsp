<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>


<title>Sign in BookApp</title>
</head>
<body>

<h1>Welcome.</h1>
<h2>Please Login</h2>
<form action="../auth/login" method="POST">

  
   <label><b>UserName</b></label>
    <input  type="text" placeholder="Enter username" name="username" required>

  
   <label><b>Password</b></label>
    <input type="password" placeholder="Enter password" name="password" required>

<button  type = "submit">SignIn</button>


<button    type = "submit"><a href="../auth/register"/>SignUp</button>


<p><a href="#">Forgot Password?</a></p>


</form>



</body>
</html>