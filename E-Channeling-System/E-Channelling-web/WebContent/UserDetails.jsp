<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 60%;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        h1 {
            font-size: 70px;
            font-weight: 600;
            background-image: radial-gradient(#553c9a, #ee4b2b);
            color: transparent;
            -webkit-background-clip: text;
        }
        h2 {
            text-align: left;
            padding: 2px;
            margin: 5px;
            background-image: linear-gradient(to left, #553c9a, #b393d3);
        }
        table {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            padding: 2px;
        }
        table td, table th {
            border: 1px solid #ddd;
            padding: 8px;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        table tr:hover {
            background-color: #ddd;
        }
        .Delete, .Update {
            font-family: PlusJakartaSans;
            font-size: 1rem;
            height: 48px;
            border-radius: 0.4rem;
            font-weight: 600;
            padding: 0 1.2rem;
            color: #ddd;
            border: none;
            box-shadow: 0 .5rem 1rem rgba(143, 142, 142, 0.15)!important;
            background: #000000;
        }
        .Delete {
            font-size: 0.8rem;
            color: #7f7f7f;
        }
        .Delete:hover {
            background: #2b2a2a;
        }
        .Update {
            font-size: 0.8rem;
            color: #7f7f7f;
        }
        .Update:hover {
            background: #2b2a2a;
        }
        
        .acc{
    margin-top: 20px;
    letter-spacing: 0.5px;
    font-size: 14px;
    color : black;
}

.link{
    color: blue;
    text-decoration: none;
}


.link:hover{
   color: red;

}

    </style>
</head>
<body>
    <h1>HEALTH TRACKER</h1>
    <br><br>
    <table>
        <c:forEach var="user" items="${userDetails}">
            <h2>Hello ${user.userFistName}, This is Your Profile Details</h2>
            <br><br>
            <c:set var="id" value="${user.userId}" />
            <c:set var="firstName" value="${user.userFistName}" />
            <c:set var="lastName" value="${user.userLastName}" />
            <c:set var="contactNo" value="${user.userContactNo}" />
            <c:set var="email" value="${user.userEmail}" />
            <c:set var="address" value="${user.userAdress}" />
            <c:set var="password" value="${user.password}" />
            <tr>
                <td> User ID</td>
                <td>${user.userId}</td>
            </tr>
            <tr>
                <td> User FirstName </td>
                <td>${user.userFistName}</td>
            </tr>
            <tr>
                <td> User LastName </td>
                <td>${user.userLastName}</td>
            </tr>
            <tr>
                <td> User ContactNo </td>
                <td>${user.userContactNo}</td>
            </tr>
            <tr>
                <td> User Email </td>
                <td>${user.userEmail}</td>
            </tr>
            <tr>
                <td> User Address </td>
                <td>${user.userAdress}</td>
            </tr>
            <tr>
                <td> User Password </td>
                <td>${user.password}</td>
            </tr>
        </c:forEach>
    </table>
    <c:url value="UpdateUser.jsp" var="userUpdate">
        <c:param name="id" value="${id}" />
        <c:param name="firstName" value="${firstName}" />
        <c:param name="lastName" value="${lastName}" />
        <c:param name="contactNo" value="${contactNo}" />
        <c:param name="email" value="${email}" />
        <c:param name="address" value="${address}" />
        <c:param name="password" value="${password}" />
    </c:url>
    <br>
    
    <c:url value = "DeleteUser.jsp" var="UserDelete">
   
       <c:param name="id" value="${id}" />
        <c:param name="firstName" value="${firstName}" />
        <c:param name="lastName" value="${lastName}" />
        <c:param name="contactNo" value="${contactNo}" />
        <c:param name="email" value="${email}" />
        <c:param name="address" value="${address}" />
        <c:param name="password" value="${password}" />
  
    </c:url>
    
    
    <a href ="${UserDelete}" >
    <button class="Delete"> Delete Profile</button>
    </a>
    
    
    <a href="${userUpdate}">
        <button class="Update">Edit Profile</button>
    </a>
    
   <b> 
   <p class="acc">Click here? <a href ="Home.jsp" class = "link"> Home page</a></p>
    </b>
</body>
</html>
