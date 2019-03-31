

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class flight
 */
@WebServlet("/flight")
public class flight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public flight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String from1=request.getParameter("from");
		String to1=request.getParameter("to");
		String date1=request.getParameter("date");
		PrintWriter out = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
			String query="select * from flight where from1 = '"+from1+"' and to1='"+to1+"' and date1='"+date1+"'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			out.print("<table border='1px solid' cellpadding='10'>");
			out.print("<th>Id</th> <th>From</th> <th>To</th> <th>Date</th> <th>Business Class Fare</th> <th>Economy Class Fare</th> <th>Time</th> <th>Economy Seat Availability</th> <th>Business Seat Availability</th> <th>Book</th>");
			while(rs.next())
			{			
				if((rs.getString(2).equals(from1))&&(rs.getString(3).equals(to1))&&(rs.getString(4).equals(date1)))
						{	
							out.print("<tr>");					
							out.println("<td>"+rs.getString(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>Rs. "+rs.getString(5)+"</td>"+"<td>Rs. "+rs.getString(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>"+"<td>"+rs.getString(9)+"</td>");
							out.println("<td><button type='submit' name='"+rs.getString(1)+"' onclick=location.href='book.jsp?i="+rs.getString(1)+"'>book</button></td>");
							out.print("</tr>");
						}
				else
				{
					out.println("wrong details");
				}
			}
			out.print("</table><br>");
		}
		catch(Exception e)
		{
			e.printStackTrace();;
		}
}

}