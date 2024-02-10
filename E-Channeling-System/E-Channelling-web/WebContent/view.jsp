<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body{
  margin-top: 10%;
  background-image: url(docc.jpg);
  background-repeat: no-repeat;
  background-size: 100%;
  
}

img{
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 150px;
  margin-left: 100px;

}



.con {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
  border: 4px solid #ccc;
  border-radius: 5px;
}

h1 {
  text-align: center;
}
fieldset{
  background-color: aliceblue;
}
label {
  display: block;
  margin-bottom: 5px;
}

input[type="text"],
input[type="password"] {
  width: 80%;
  padding: 5px;
  margin-bottom: 10px;
}

button[type="submit"] {
  width: 50%;
  padding: 10px;
  background-color: gray;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  align-items: center;
}
button[type="submit"]:hover{
  background-color: black;
}



</style>
</head>
<body>



    <form action="<%=request.getContextPath()%>/AccDetailsServlet" method="post" >
<div class= con>  

  

 
 <h2>Verify your Email </h2>
  
    
      <label for="username">Email :</label>
      <input type="text" id="useremail" name="userEmail" >

   

      <button type="submit" name="sub">Submit</button>
      

  </div>

  <div class="container" style="background-color:#f1f1f1">


  </div>
</form>

</body>
</html>

  