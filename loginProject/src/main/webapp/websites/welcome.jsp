<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Logged in</h1>
		<div>
			<form class="link" action="<%=request.getContextPath()%>/LogOut"
				method="POST">
				<button type="submit" class="btn btn-outline-danger">Log
					out</button>
					</form>
		</div>
	
</body>
</html>