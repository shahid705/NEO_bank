<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--<title>Sidebar Menu | Side Navigation Bar</title>-->
<!-- CSS -->

<link rel="stylesheet" href="home.css" />
<!-- Boxicons CSS -->
<link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
	rel="stylesheet" />
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
</body>
</html>

