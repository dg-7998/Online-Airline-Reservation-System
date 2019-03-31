<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.io.*,java.util.*,java.sql.*,java.lang.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill</title>
</head>
<body>
	
	<%
		Integer economy=(Integer)session.getAttribute("economy"),business=(Integer)session.getAttribute("business");
		int total=0;
		String i = (String)session.getAttribute("i");
		//out.print(i);
		String b_price=(String)session.getAttribute("b_price"),e_price=(String)session.getAttribute("e_price");
		String e_passengers = (String)request.getParameter("e_passengers");
		String b_passengers = (String)request.getParameter("b_passengers");
		//out.println(b_price +" " +e_price+" "+e_passengers+" "+b_passengers +" "+economy+" "+business);
		total=(Integer.valueOf(b_price)*Integer.valueOf(b_passengers))+(Integer.valueOf(e_price)*Integer.valueOf(e_passengers));
		economy-=Integer.parseInt(e_passengers);
		business-=Integer.parseInt(b_passengers);
		out.print("<h2>Bill Details</h2><br>");
		out.print("For Business Class: Rs."+(Integer.parseInt(b_price)*Integer.parseInt(b_passengers))+"<br>");
		out.print("For Economy Class: Rs."+(Integer.parseInt(e_price)*Integer.parseInt(e_passengers))+"<br>");
		out.print("Total: Rs."+total); 
		 Class.forName("com.mysql.jdbc.Driver");
		Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
		String query="Update flight SET availability=?, b_availabilty=? where id=?";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setInt(1, economy);
		ps.setInt(2, business);
		ps.setString(3, i);
		ps.executeUpdate();//almost done...
	%>
	
</body>
</html>