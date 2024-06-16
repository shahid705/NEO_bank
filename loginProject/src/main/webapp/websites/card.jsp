<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Credit Card Ui Design</title>
    <link rel="stylesheet" href="card.css" />
  </head>
  <body>
    <div class="container">
      <header>
        <span class="logo">
          <img src="images1/logo.png" alt="" />
          <h5>Master Card</h5>
        </span>
        <img src="images1/chip.png" alt="" class="chip" />
      </header>

      <div class="card-details">
        <div class="name-number">
          <h6>Card Number</h6>
          <h5 class="number">8050 5040 2030 3020</h5>
          <%
								String custid = (String)session.getAttribute("accNo");
								
								try {
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feed", "root", "admin");
									Statement st = con.createStatement();
									Statement st1 = con.createStatement();
									ResultSet rs = st.executeQuery("select * from customers where customerId =" + custid);
									

									while (rs.next()) {
								%>
                                <h5 class="name"><%=rs.getString(2)%></h5>


								<%
								}
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
          
        </div>
        <div class="valid-date">
          <h6>Valid Thru</h6>
          <h5>05/28</h5>
        </div>
      </div>
    </div>
  </body>
</html>
