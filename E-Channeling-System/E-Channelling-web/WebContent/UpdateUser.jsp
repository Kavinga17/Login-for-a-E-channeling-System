<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>HEALTH TRACKER</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin-bottom: 10px;
            background-image: url("docc.jpg");
        }
        h1 {
            font-size: 36px;
            color: #333;
            margin-top: 20px;
        }
        h2 {
            font-size: 24px;
            color: #555;
            margin: 20px 0;
        }
        form {
            width: 60%;
            margin: 0 auto;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 80%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            text-align: center;
        }
        button {
            background-color: #808080;
            color: #F8F8FF;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            font-weight: bold;
            cursor: pointer;
            width: 50%;
            font-size: 16px;
        }
        button:hover {
            background-color: #2F4F4F;
        }
        
        h1 {
            font-size: 70px;
            font-weight: 600;
            background-image: radial-gradient(#553c9a, #ee4b2b);
            color: transparent;
            -webkit-background-clip: text;
        }
        h2 {
            text-align: center;
            padding: 2px;
            margin: 5px;
            color: white;
        }
    </style>
</head>
<body> 

<br>
    
<%
String id = request.getParameter("id");
String Firstname = request.getParameter("firstName");
String Lastname = request.getParameter("lastName"); 
String ContactNo = request.getParameter("contactNo"); 
String email = request.getParameter("email"); 
String address = request.getParameter("address"); 
String password = request.getParameter("password"); 
%>

<h1>HEALTH TRACKER</h1>
    
<br>
<h2><%=Firstname%>, Would you like to update your profile Details..?</h2>
<br>
    
<form action="<%=request.getContextPath()%>//updateUserServlet" method="post" onsubmit="return validateUpdateForm()">
    <label for="firstName">User ID:</label>
    <input type="text" id="id" name="id" value="<%=id%>" readonly><br><br>
              
    <label for="firstName">User FirstName:</label>
    <input type="text" id="firstName" name="userFirstName" value="<%=Firstname%>" ><br><br>

    <label for="lastName">User LastName:</label>
    <input type="text" id="lastName" name="userLastName" value="<%=Lastname%>" ><br><br>

    <label for="contactNo">User ContactNo:</label>
    <input type="text" id="contactNo" name="userContactNo" value="<%=ContactNo%>" ><br><br>
    
    <label for="userEmail">User Email:</label>
    <input type="email" id="userEmail" name="userEmail" value="<%=email%>" ><br><br>

    <label for="userAddress">User Address:</label>
    <input type="text" id="userAddress" name="userAddress" value="<%=address%>" ><br><br>

    <label for="password">User Password:</label>
    <input type="password" id="password" name="password" value="<%=password%>" ><br><br>

    <button type="submit">Update Profile</button>
</form>

<script>
function validateUpdateForm() {
    var userFirstName = document.getElementById("firstName").value;
    var userLastName = document.getElementById("lastName").value;
    var userContactNo = document.getElementById("contactNo").value;
    var userEmail = document.getElementById("userEmail").value;
    var userAddress = document.getElementById("userAddress").value;
    var password = document.getElementById("password").value;

    if (userFirstName === "" || userLastName === "" || userContactNo === "" || userEmail === "" || userAddress === "" || password === "") {
        alert("All fields must be filled out.");
        return false; 
    }

    if (password.length < 6) {
        alert("Password should be at least 6 characters.");
        return false; 
    }
   

    return true;
}
</script>
</body>
</html>
