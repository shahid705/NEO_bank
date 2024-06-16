package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class RegistrationDataModelling {
	static final String jdbc_driver="com.mysql.cj.jdbc.Driver";
	static final String db_url="jdbc:mysql://localhost:3306/feed";
	static final String user="root";
	static final String pass="password";
	
	public void insertFeedbackData(Registration f)
	{
		Connection conn=null;
		Statement stmt=null;
		
		try
		{
			Class.forName(jdbc_driver);
			conn=DriverManager.getConnection(db_url,user,pass);
			stmt=conn.createStatement();
			
			String sql = "insert into customers values('" + f.getPhNo() + "','" + f.getFirstName() + "','" + f.getMiddleName() + "','" + f.getLastName()  + "','" + f.getPhNo() + "','" + f.getEmailId()  +"','" + f.getPassword() +"' ,'" + f.getdob()+"','" + f.getGender()+"' ,'"+ f.getFatherName() + "','" +  f.getMotherName() + "','" + f.getaadhar() + "','" + f.getPanCard() + "','"+ f.getMaritalststus() +"','" + f.getoccupation() + "','" + f.getannualIncome ()+ "','"  + f.getPwd () + "')";
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();
		}
		catch(SQLException se){
			se.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{

			}
	}


}
