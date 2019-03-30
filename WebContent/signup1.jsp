<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="user" method=post>
		Name:  <input type=text name=uname required>
		<br>
		Password: <input type=password name=password required>
		<br> 
		Confirm Password: <input type=password name=c_password required>
		<br> 
		Mobile No: <input type=text name=no required> (This will be user id while logging in)
		<br>
		<input type=submit value=Signup>
	</form>
	
	
	
	
</body>
</html>