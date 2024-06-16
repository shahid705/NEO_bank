package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDataModel {
	static final String jdbc_driver="com.mysql.cj.jdbc.Driver";
	static final String db_url="jdbc:mysql://localhost:3306/feed";
	static final String user="root";
	static final String pass="password";  //admin
	
	public void insertLoginData(Login l)
	{
		Connection conn=null;
		Statement stmt=null;
		
		try
		{
			Class.forName(jdbc_driver);
			conn=DriverManager.getConnection(db_url,user,pass);
			stmt=conn.createStatement();
			
			String sql="insert into login values('"+l.getAccNo()+"', '"+l.getPass()+"')";
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
