<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill</title>
</head>
<body>
	
	<%
		int economy=0,business=0,total;
		String b_price=null,e_price=null;
		String e_passengers = request.getParameter("e_passengers");
		String b_passengers = request.getParameter("b_passengers");
		total=(Integer.parseInt(b_price)*Integer.parseInt(b_passengers))+(Integer.parseInt(e_price)*Integer.parseInt(e_passengers));
		economy-=Integer.parseInt(e_passengers);
		business-=Integer.parseInt(b_passengers);
		out.print("<h2>Bill Details</h2><br>");
		out.print("For Business Class: Rs."+(Integer.parseInt(b_price)*Integer.parseInt(b_passengers))+"<br>");
		out.print("For Economy Class: Rs."+(Integer.parseInt(e_price)*Integer.parseInt(e_passengers))+"<br>");
		out.print("Total: Rs."+total);	
	%>
</body>
</html>