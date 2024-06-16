package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateDataOfUser
 */
@WebServlet("/UpdateDataOfUser")
public class UpdateDataOfUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDataOfUser() {
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
		
		
		String First_name = request.getParameter("first_name");
		String Middile_name = request.getParameter("middle_name");
		String Last_name = request.getParameter("last_name");
		String PhNo = request.getParameter("phno");
		String EmailId = request.getParameter("emailId");
		String FatherName = request.getParameter("father_name");
		String MotherName = request.getParameter("Mother_name");
		String aadhar = request.getParameter("aadhar");
		String PanCard = request.getParameter("PanCard");
		String occupation = request.getParameter("occupation");
		String annualIncome = request.getParameter("AnnualIncome");
		String dob = request.getParameter("Dob");
		String Gender = request.getParameter("gender");
		String Maritalststus = request.getParameter("Maritalstatus");
		String Pwd = request.getParameter("pwd");
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/feed","root","password");
			PreparedStatement ps=conn.prepareStatement("update customers set firstname=?,middlename=?,lastname=?,email=?,dob=?,gender=?,fathername=?,mothername=?,aadhar=?,pancard=?,maritalstatus=?,occupation=?,annualincome=?,pwd=? where phno=?");
			// sAME ORDER AS IN UPDATE QUERY AND IN TABLE
           
			ps.setString(1,  First_name);
			ps.setString(2, Middile_name);
			ps.setString(3, Last_name);
			ps.setString(4,  EmailId);
			ps.setString(5, dob);
			ps.setString(6, Gender);
			ps.setString(7, FatherName);
			ps.setString(8, MotherName);
			ps.setString(9, aadhar);
			ps.setString(10,PanCard);
			ps.setString(11, Maritalststus);
			ps.setString(12, occupation);
			ps.setString(13, annualIncome);
			ps.setString(14, Pwd);
			ps.setString(15, PhNo);
			
			ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
