<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
	String i = request.getParameter("i");
	String query="select bc,ec,availability,b_availabilty from flight where id='"+i+"'";
	Statement st = con.createStatement();
	int economy=0,business=0,total=0;
	String b_price=null,e_price=null;
	ResultSet rs = st.executeQuery(query);
	 while(rs.next()) {
		b_price = rs.getString(1);
		e_price = rs.getString(2);
		economy=rs.getInt(3);
		business=rs.getInt(4);
	}
	%>
	<form action="bill.jsp" method=post>
		No of Passengers for Business Class: <input type=text/ name=b_passengers><br>
		No of Passengers for Economy Class: <input type=text/ name=e_passengers><br>
		<button type="submit">Submit</button>		
	</form>
	
		
		
	
	
</body>
</html>