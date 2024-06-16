package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Registration;
import model.RegistrationDataModelling;

/**
 * Servlet implementation class RegistrationFormDataCollection
 */
@WebServlet("/RegistrationFormDataCollection")
public class RegistrationFormDataCollection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationFormDataCollection() {
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
		String pass = request.getParameter("pass");
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

		Registration s = new Registration();


		s.setFirstName(First_name);
		s.setMiddleName(Middile_name);
		s.setLastName(Last_name);
		s.setPhNo(PhNo);
		s.setEmailId(EmailId);
		s.setPassword(pass);
		s.setFatherName(FatherName);
		s.setMotherName(MotherName);
		s.setaadhar(aadhar);
		s.setPanCard(PanCard);
		s.setoccupation(occupation);
		s.setannualIncome(annualIncome);
		s.setdob(dob);
		s.setGender(Gender);
		s.setMaritalststus(Maritalststus);
		s.setPwd(Pwd);

		RegistrationDataModelling rdm = new RegistrationDataModelling();
		rdm.insertFeedbackData(s);	
				
		
				

	}

}
