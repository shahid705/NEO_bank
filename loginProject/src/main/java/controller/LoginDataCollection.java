package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import model.Login;
import model.LoginDataModel;

/**
 * Servlet implementation class LoginDataCollection
 */
@WebServlet("/LoginDataCollection")
public class LoginDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginDataCollection() {
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
		doGet(request, response);
		
		String accno=request.getParameter("accno");
		String pass=request.getParameter("pass");
		
		Login l = new Login();
		l.setAccNo(accno);
		l.setPass(pass);
		//LoginDataModel lm = new LoginDataModel();
		//lm.insertLoginData(l);
		
		
		//printing html code
		PrintWriter out=response.getWriter();
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/feed","root","password");
		PreparedStatement ps=conn.prepareStatement("select phno from customers where phno=? and pass=?");
		ps.setString(1,accno);
		ps.setString(2, pass);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			HttpSession session=request.getSession();
			session.setAttribute("accNo", accno);
			session.setAttribute("pass", pass);
			//RequestDispatcher rd = request.getRequestDispatcher("websites/welcome.jsp");
			//rd.forward(request, response);
			response.sendRedirect(request.getContextPath()+"/websites/home.jsp");
		}
		else
		{
			//out.println("Login Failed");
			//out.println("<a href=login.jsp> try Again</a>");
			response.sendRedirect(request.getContextPath()+"/websites/login.jsp");
		}
		}
		catch (SQLException e){
			e.printStackTrace();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
	}

}
