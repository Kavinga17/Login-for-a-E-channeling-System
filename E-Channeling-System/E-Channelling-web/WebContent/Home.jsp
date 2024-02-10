<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>E-Channelling</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            background-image: url("docc.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachement: fixed;
            text-align: center;
        }

        header {
            background-color: #0074D9;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        nav {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 30px 50px;
            background-image:url(doc.jpg);
        }

        nav a {
            text-decoration: none;
            color: black;
            padding: 20px 30px;
        }

        nav a:hover {
            color: red;
        }

        main {
            text-align: center;
            padding: 20px;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 50%;
        }

        img {
            max-width: 100%;
            height: auto;
            display: flex;
            margin: 0 auto;
            margin-top: 200px;
            
        }
        
        .container {
            background-color: #808080;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            padding: 20px;
            position: relative;
    		top: 50px;
    		left: 80px;
            text-align: center;
        }
        
        .squarebox{
    	 	background-color: teal;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            padding: 20px;
            position: relative;
    		bottom: 150px;
    		left: 790px;
            text-align: center;
    	 }
    	 
    	 .imagecenter{
    	display:flex;
    	justify-content: center;
		}
		
		.newsbox{
    	display:flex;
    	justify-content: center;
   		align-items: center;
    	height:50px;
		}
		
		.rectanglecover{
    	width:800px;
    	height: 500px;
    	background-color: lightblue;
    	text-align: center;
    	padding:20px;
    	margin-bottom: -350px;
		}
		
		.am {
            width: 10em;
            position: relative;
            height: 3.5em;
            border: 3px ridge #149CEA;
            outline: none;
           background-color: transparent;
           color: white;
            transition: 1s;
          border-radius: 0.3em;
          font-size: 16px;
         font-weight: bold;
        cursor: pointer;
        font-family:cursive,sans-serif;
}

.am::after {
  content: "";
  position: absolute;
  top: -10px;
  left: 3%;
  width: 95%;
  height: 40%;
  transition: 0.5s;
  transform-origin: center;
}

.am::before {
  content: "";
  transform-origin: center;
  position: absolute;
  top: 80%;
  left: 3%;
  width: 95%;
  height: 40%;
  transition: 0.5s;
}

.am:hover::before, button:hover::after {
  transform: scale(0)
}

.am:hover {
  box-shadow: inset 0px 0px 25px #1479EA;
}
	
    </style>
</head>
<body>
    <header>
        <h1>WELCOME TO HEALTH TRACKER</h1>
    </header>
    
    <nav>
    <b>
        <a href="#">Home</a>
        <a href="#">Schedule Appointment</a>
        <a href="#">Order Medicine</a>
        <a href="#">FAQ</a>
        <a href="#">About Us</a>
        <a href="#">Contact Us</a>
        
         <button class="am" style="float:right">
        <a href="view.jsp">Profile</a>
          
        
       </button>
        </b>  
    </nav>
    
    <div class="imagecenter">
    	<img src="pog.ph.jpg" alt="echanneling placeholder">
    </div>
    
    <div class="container">
    	<h1> Did you Know? </h1>
    	<h3> One of the significant benefits of e-channeling is the reduction in waiting times at healthcare facilities. Patients can book appointments in advance and arrive at the clinic or hospital at their scheduled time, reducing the need to wait in long queues. </h3>
    </div>
    
    <div class="squarebox">
    	<h3> Regular Exercise: Aim for at least 150 minutes of moderate-intensity exercise each week. Regular physical activity helps maintain a healthy weight and reduces the risk of chronic diseases. </h3>
    </div>
    
    <div class="newsbox">
            <div class="rectanglecover">
                <h1>The latest news</h1>
                <br>
                <h3 class="textleft">11/05/2023 <br> Website maintanance will start at 19:00. All services will be halted until maintanance completes</h3>
                <br>
                <h3 class="textleft">09/05/2023 <br> Guideline sheet has been updated. Refer to the new variant from the downloads page</h3>
                <br>
                <h3 class="textleft">04/05/2023 <br> Paypal has been added as an accepted payment method option</h3>
                <br>
                <h3 class="textleft">30/04/2023 <br> FAQ page has undergone improvements. Visit FAQ page to see the updated features</h3>
    		</div>
    </div>

    <footer>
        &copy; 2023 E-Channelling. All rights reserved.
    </footer>
</body>
</html>