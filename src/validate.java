

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class validate
 */
@WebServlet("/validate")
public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public validate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/*PrintWriter out = response.getWriter();
		out.println("\nWelcome Deep");*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String mobile = request.getParameter("mobile");
		String pass = request.getParameter("password");
		PrintWriter out = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");
			String query="select * from user where mobile = '"+mobile+"'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if(rs.next())
			{
				if(rs.getString(2).equals(pass)){
			
				//response.sendRedirect("Home.jsp?name="+rs.getString(1));
				RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");  
				request.setAttribute("name",rs.getString(1));
		        rd.forward(request, response); 
				}
				else{
					out.println("<meta http-equiv='refresh' content='3;URL=login.html'>");//redirects after 3 seconds
					out.println("<p style='color:red;'>Incorrect username or password!</p>");
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		  
		
	}

}
