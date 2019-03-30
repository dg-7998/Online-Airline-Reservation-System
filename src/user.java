import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class user
 */
@WebServlet("/user")
public class user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String name = request.getParameter("uname");
		String pass = request.getParameter("password");
		String c_pass = request.getParameter("c_password");
		String mobile = request.getParameter("no");
		PrintWriter out = response.getWriter(); 
		
		if(pass.equals(c_pass))
		{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","");  
			String query = "insert into user values (?,?,?)";
			PreparedStatement stmt= con.prepareStatement(query);
			
			stmt.setString(1,name);
			stmt.setString(2,pass);
			stmt.setString(3,mobile);

			int i = stmt.executeUpdate();
			
			
			con.close();
		}catch(Exception e){
			System.out.print(e);
		}
		response.sendRedirect("login.html");
		}
		else
		{
			out.println("<meta http-equiv='refresh' content='3;URL=signup1.jsp'>");//redirects after 3 seconds
			out.println("<p style='color:red;'>Confirm password doesn't match!</p>");
			//response.sendRedirect("signup1.jsp");	
		}
		}	
}


