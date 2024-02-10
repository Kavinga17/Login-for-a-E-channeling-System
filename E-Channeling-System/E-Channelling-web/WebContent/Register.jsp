<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<script>
       
        function validateForm() {
            var firstName = document.getElementById("firstName").value;
            var lastName = document.getElementById("LastName").value;
            var email = document.getElementById("Email").value;
            var address = document.getElementById("Address").value;
            var contactNumber = document.getElementById("ContactNumber").value;
            var password = document.getElementById("psw").value;

            if (firstName === "" || lastName === "" || email === "" || address === "" || contactNumber === "" || password === "") {
                alert("All fields must be filled out.");
                return false; 
            }

            if (password.length < 6) {
                alert("Password should be at least 6 characters.");
                return false; 
            }
            
            if (contactNumber.length !== 10) {
                alert("Contact number should be exactly 10 characters.");
                return false; 
            }

            return true;
        }
    </script>


<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}




.container {
  padding: 16px;
  background-color: white;
}


input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=radio]
{
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;

}

input[type=text]:focus, input[type=password]{
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

.registerbtn{
  
  padding: 1rem 2rem;
  border-radius: .5rem;
  border: none;
  font-size: 1rem;
  font-weight: 400;
  color: #f4f0ff;
  text-align: center;
  backdrop-filter: blur(10px);
  cursor: pointer;
  width: 50%;
  margin-left: 25%;
}

.registerbtn::before {
  content: "";
  display: block;
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 100%;
  border-radius: .5rem;
  background: linear-gradient(180deg, rgba(8, 77, 126, 0) 0%, rgba(8, 77, 126, 0.42) 100%),rgba(47,255,255,.24);
  box-shadow: inset 0 0 12px rgba(151,200,255,.44);
  z-index: -1;
}

.registerbtn::after {
  content: "";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(180deg, rgba(8, 77, 126, 0) 0%, rgba(8, 77, 126, 0.42) 100%),rgba(47,255,255,.24);
  box-shadow: inset 0 0 12px rgba(151,200,255,.44);
  border-radius: .5rem;
  opacity: 0;
  z-index: -1;
  transition: all .3s ease-in;
}

.registerbtn:hover::after {
  opacity: 1;
}



a {
  color: dodgerblue;
}


.signin {
  background-color: #f1f1f1;
  text-align: center;
}

</style>

</head>
<body>

<form action="<%=request.getContextPath()%>/AddUserServlet" method="post" onsubmit="return validateForm()">

  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to Register : </p>
    <hr>

    
    <label for="name"><b>Enter The First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="firstName" id="firstName" >
    
     <label for="name"><b>Enter The Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="LastName" id="LastName" >

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="Email" id="Email" >

    <label for="Adress"><b>Address</b></label>
    <input type="text" placeholder="Enter Address" name="Address" id="Address" >


    <label for="Contact_Number"><b>Contact_Number</b></label>
    <input type="text" placeholder="Enter Contact_Number" name="ContactNumber" id="ContactNumber" >

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" >
    

    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="Login.jsp">Log in</a>.</p>
  </div>
</form>

</body>
</html>