<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="accountopen.css"></style>
</head>
<body>
    <div class="wrapper">
        <div class="title">
          Account Opening Form
        </div>
        <div class="form">
        <form action="<%=request.getContextPath()%>/RegistrationFormDataCollection" method="POST">
              <div class="input-box">
                <label for="name">First Name</label>
                <input type="name"  name="first_name" required>
              </div>
              <div class="input-box">
                <label for="name">Middle Name </label>
                <input type="name"  name="middle_name" required>
              </div>
              <div class="input-box">
                <label for="name">Last Name </label>
                <input type="name"  name="last_name" required>
              </div>
              <div class="input-box">
                <label for="name">Phone No. </label>
                <input type="name"  name="phno" required>
              </div>
              <div class="input-box">
                <label for="name">Email Id </label>
                <input type="email"  name="emailId" required>
              </div>
              <div class="input-box">
                <label for="name">Password </label>
                <input type="name"  name="pass" required>
              </div>
              <div class="input-box">
                <label for="name">Father's Name </label>
                <input type="name"  name="father_name" required>
              </div>
              <div class="input-box">
                <label for="name">Mother Name </label>
                <input type="name"  name="Mother_name" required>
              </div>
              <div class="input-box">
                <label for="name">Adhar Card </label>
                <input type="text"  name="aadhar" required>
              </div>
              <div class="input-box">
                <label for="name">PAN Card </label>
                <input type="text"  name="PanCard" required>
              </div>
              <div class="input-box">
                <label for="name">Ocupation </label>
                <input type="text"  name="occupation" required>
              </div>
              <div class="input-box">
                <label for="name">Annual Income </label>
                <input type="text"  name="AnnualIncome" required>
              </div>
              <div class="input-box">
                <label for="name">DOB </label>
                <input type="date"  name="Dob" required>
              </div>
            <div class="inputfield">
                <label>Gender</label>
                <div class="custom_select" >
                  <select name="gender">
                    <option value="" >Select</option>
                    <option value="male" >Male</option>
                    <option value="female" >Female</option>
                  </select>
                </div>
             </div> 
             <div class="inputfield">
                <label>Marital Status</label>
                <div class="custom_select">
                  <select name="Maritalstatus">
                    <option value="">Select</option>
                    <option value="married" ">Married</option>
                    <option value="unmarried">Unmarried</option>
                  </select>
                </div>
             </div> 
            <div class="inputfield">
                <label>PWD</label>
                <div class="custom_select" >
                  <select name="pwd">
                    <option value="">Select</option>
                    <option value="yes" >Yes</option>
                    <option value="no" >No</option>
                  </select>
                </div>
             </div> 
             <div class="inputfield terms">
                <label class="check">
                  <input type="checkbox">
                  <span class="checkmark"></span>
                </label>
                <p>Agreed to terms and conditions</p>
             </div> 
            <div class="inputfield">
              <input type="submit" name="submit" value="Register" class="btn">
            </div>
          </div>
          <div class="signup">
          <span class="signup">Already have an account?
           <label for="check">
           <a href="./login.jsp" id="login">Login</a></label>
          </span>
        </div>
        </form>
      </div>

</body>
</html>