<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
	integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="home.css" />
<!-- Boxicons CSS -->
<link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
	rel="stylesheet" />
<style>
.col-5 .container {
	margin-left: 65px;
}
.scroller {
    width: 850px;
    height: 250px;
    overflow-y: scroll;
    scrollbar-color: rebeccapurple green;
    scrollbar-width: thin;
    }
</style>
</head>
<body>
	<nav>
		<div class="logo">
			<i class="bx bx-menu menu-icon"></i> <span class="logo-name">aPnaBank</span>
		</div>
		<div class="sidebar">
			<div class="logo">
				<i class="bx bx-menu menu-icon"></i> <span class="logo-name">aPnaBank</span>
			</div>

			<div class="sidebar-content">
				<ul class="lists">
					<li class="list"><from ="dashboard.jsp" method="post">
						<a href="dashboard.jsp" class="nav-link"> <i
							class="bx bx-home-alt icon"></i> <span class="link">Dashboard</span>
						</a> </from></li>
					<li class="list"><a href="#" class="nav-link"> <i
							class="bx bx-bar-chart-alt-2 icon"></i> <span class="link">Saving</span>
					</a></li>
					<li class="list">
						<form ="fundtransfer.jsp" method="post">
							<a href="fundtransfer.jsp" class="nav-link"> <i
								class="bx bx-bell icon"></i> <span class="link">Fund
									Transfer</span>
							</a>
						</form>
					</li>
					<li class="list">
					<form ="transaction.jsp" method="post">
					<a href="transaction.jsp" class="nav-link"> <i
							class="bx bx-message-rounded icon"></i> <span class="link">Transaction
								Details</span>
					</a>
					</form>
					</li>
					<li class="list">
						<form ="ministatement.jsp" method="post">
							<a href="ministatement.jsp" class="nav-link"> <i
								class="bx bx-pie-chart-alt-2 icon"></i> <span class="link">Mini
									Statement</span>
							</a>
						</form>
					</li>
					<li class="list">
					<form ="card.jsp" method="post">
					<a href="card.jsp" class="nav-link"> <i
							class="bx bx-rectangle icon"></i> <span class="link">Cards</span>
					</a></li>
					<li class="list">
						<form ="contactUsForm.jsp" method="post">
							<a href="contactUsForm.jsp" class="nav-link"> <i
								class="bx bx-phone icon"></i> <span class="link">Help
									Line</span>
							</a>
						</form>
					</li>
					<li class="list">
						<form ="editProfile.jsp" method="post">
							<a href="editProfile.jsp" class="nav-link"> <i
								class="bx bx-cog icon"></i> <span class="link">Edit
									Profile</span>
							</a>
						</form>
					</li>
					<li class="list"><a href="#" class="nav-link"> <i
							class="bx bx-log-out icon"></i> <%--<span class="link">Logout</span>--%>
							<form class="link" action="<%=request.getContextPath()%>/LogOut"
								onclick="Logout()" id="log-from" method="post">
								<button type="submit" class="btn btn-outline-danger">Log
									out</button>
							</form>
					</a></li>
				</ul>

			</div>
			</div>
		
	</nav>

	<section class="overlay"></section>


	<script>
      const navBar = document.querySelector("nav"),
        menuBtns = document.querySelectorAll(".menu-icon"),
        overlay = document.querySelector(".overlay");

      menuBtns.forEach((menuBtn) => {
        menuBtn.addEventListener("click", () => {
          navBar.classList.toggle("open");
        });
      });

      overlay.addEventListener("click", () => {
        navBar.classList.remove("open");
      });
    </script>
	<div class="col-5">
		<div class="container">

			<div class="row align-items-center vh-100">
				<div class="col-5 mx-auto">

					<div class="card shadow border">


						<div class="card" style="width: 55rem; height: 25rem;">



							<div class="card-body">
								<!-- write form code here  -->



								<h2>Transaction Details</h2>
								<div class="scroller">
                                <table class="table">
									<thead>
										<tr>
											<th scope="col">To account</th>
											<th scope="col">Amount</th>
											<th scope="col">Status</th>
											<th scope="col">Date</th>
											<th scope="col">Time</th>
										
										</tr>
									</thead>
								<%
								String custid = (String)session.getAttribute("accNo");
								
								try {
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feed", "root", "password");
									Statement st = con.createStatement();
									ResultSet rs = st.executeQuery("select * from transactions where customerId =" + custid);


									while (rs.next()) {
								%>
                                  
								
									<tbody class="table-group-divider">
										<tr>
											<th scope="row"><%=rs.getString(2)%></th>
											<td><%=rs.getString(4)%></td>
											<td><%=rs.getString(5)%></td>
											<td><%=rs.getString(6)%></td>
											<td><%=rs.getString(7)%></td>
										</tr>

									

								<%
								}
								} catch (Exception e) {
								e.printStackTrace();
								}
								%>
                            </tbody>
								</table>
								</div>
                            
							</div>


						</div>
					</div>
				</div>
			</div>
</body>
</html>