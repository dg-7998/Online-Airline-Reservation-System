<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name1=(String)request.getAttribute("name");
String name=request.getParameter("name");  
out.print("welcome "+name1);
/* passenger:<input type="text" name="passenger"><br> */
%>
<form method="post" action="flight">
From:<input type="text" name="from"><br>
To:<input type="text" name="to"><br>
Departure Date:<input type="text" name="date" placeholder="dd/mm/yyyy"><br>
<input type="submit" name="search" value="search">
</form>  
</body>
</html>
