<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="registration.css">
<style >

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}
body{
  background:#e3f2fd;
  padding: 0 10px;
}
.wrapper{
  max-width: 500px;
  width: 100%;
  background: #fff;
  margin: 50px auto;
  box-shadow: 2px 2px 4px rgba(0,0,0,0.125);
  padding: 30px;
}

.wrapper .title{
  font-size: 24px;
  font-weight: 700;
  margin-bottom: 25px;
  color: #fec107;
  text-transform: uppercase;
  text-align: center;
}

.wrapper .form{
  width: 100%;
}

.wrapper .form .inputfield{
  margin-bottom: 15px;
  display: flex;
  align-items: center;
}

.wrapper .form .inputfield label{
   width: 200px;
   color: #757575;
   margin-right: 10px;
  font-size: 14px;
}

.wrapper .form .inputfield .input,
.wrapper .form .inputfield .textarea{
  width: 100%;
  outline: none;
  border: 1px solid #d5dbd9;
  font-size: 15px;
  padding: 8px 10px;
  border-radius: 3px;
  transition: all 0.3s ease;
}

.wrapper .form .inputfield .textarea{
  width: 100%;
  height: 125px;
  resize: none;
}
</style>
</head>
<body>
	<div class="wrapper">
        <div class="title">
          Login Form

          <form action= "<%=request.getContextPath()%>/LoginDataCollection" method="POST" id="login-from">
        </div>
        <div class="form">
           
           <div class="inputfield">
            <label>Account Number</label>
            <input type="text" class="input" name="accno">
         </div>
         
          
           <div class="inputfield">
              <label>Password</label>
              <input type="password" class="input" name="pass">
           </div>    
          
          <div class="inputfield">
            <input type="submit" value="Login" class="btn" onclick="warning()" >
          </div>
        </div>
        <div class="signup">
        <span class="signup">Don't have an account?
         <label for="register"></label>
         <a href="./registration.jsp" id="register">Register</a>
        </span>
      </div>
      </form>
    </div>



	<script>
		function warning() {
			var con = confirm("Do you want to submit?");
			if (con) {
				window.location.assign("./home.jsp");
			} else {
				window.location.assign("./login.jsp");
			}
		}
	</script>
</body>
</html>