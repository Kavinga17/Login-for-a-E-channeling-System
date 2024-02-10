<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Login</title>



    <style>

        
body{
    width: 100vw;
    height: 100vh;
    background: #24263d;
    display: grid;
    justify-content: center;
    align-content: center;

}
.login{
    width: 800px;
    height: 65vh;
    display: grid;
    grid-template-columns: 1fr 1fr;
    border: 3px solid rgb(255, 255, 255);
    box-shadow: 0 0 50px 0 rgb(187, 200, 188);
    padding: 50px;
    margin: 20px;
    
}

.form{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.title{
    font-size: 35px;
}


.background-image {
    position: fixed;
    width: 100%;
    height: 100%;
    z-index: -1;
    background-image: url("doctor-medical.jpg"); 
    background-size: cover;
    filter: blur(1px);
}
.inp{
    padding-bottom: 10px;
    border-bottom: 2px solid #eee;
}

.input{
    border: none;
    outline: none;
    background: none;
    width: 260px;
    margin-top: 40px;
    padding-right: 10px;
    font-size: 17px;
    color: rgb(19, 18, 18);
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


/*Button Design*/

.log {
    width: 288px;
    margin-top: 25px;
    padding: 10px 0;
    letter-spacing: 1px;
    font-size: 18px;
    display: inline-block;
    outline: 0;
    border: 0;
    cursor: pointer;
    will-change: box-shadow,transform;
    background: radial-gradient( 100% 100% at 100% 0%, #89E5FF 0%, #5468FF 100% );
    padding: 0 2em;
    border-radius: 0.3em;
    color: #fff;
    height: 2.6em;
    text-shadow: 0 1px 0 rgb(0 0 0 / 40%);
    transition: box-shadow 0.15s ease, transform 0.15s ease;
  }
  
  .log:hover {
    box-shadow: 0px 0.1em 0.2em rgb(45 35 66 / 40%), 0px 0.4em 0.7em -0.1em rgb(45 35 66 / 30%), inset 0px -0.1em 0px #3c4fe0;
    transform: translateY(-0.1em);
  }
  
  .log:active {
    box-shadow: inset 0px 0.1em 0.6em #3c4fe0;
    transform: translateY(0em);
  }
  
 .title{

color : black;
}

    </style>
    



</head>
<body>


<div class="login">
       <form action="<%=request.getContextPath()%>//Login_servlet" method="post" >

            <h1 class="title">Login</h1>
            <div class="inp">
                <input type="text" name="userEmail" id="" class="input" placeholder="UserEmail">
               
            </div>
            <div class="inp">
                <input type="password" name="password" id="" class="input" placeholder="Password">
              
            </div>
            
            <button class="log" name ="log">Login</button>

            <p class="acc">Don't have an account? <a href="Register.jsp" class="link">Please Sign Up</a></p>
            

        </form>
        

    </div>

    <div class="background-image"></div>

</body>
</html>