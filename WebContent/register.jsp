<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--//tags -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="js/validations.js"></script>
</head>
<body>
<!-- header -->
<div class="header" id="home">
	<div class="container">
		<ul>
			<li><i class="fa fa-phone"></i>Call : 01234567898</li>
			<li><i class="fa fa-envelope-o"></i>info@example.com</li>
		    <li><a href="login.jsp" ><i class="fa fa-unlock-alt"></i>Sign In</a></li>
			<li><a href="register.jsp" ><i class="fa fa-pencil-square-o"></i>Sign Up</a></li>
		</ul>
	</div>
</div>
<!-- header -->
<!-- banner -->
<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>Shopper <span>Store</span></h3>
			<!--/w3_short-->
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">
						   
						 </div>
				</div>
		    <!--//w3_short-->
		 </div>
</div>
<!-- banner -->
<!-- Modal2 -->
<form id="signup" action="/Project1.1/RegisterUser">
    <h1>Sign Up with Shopper Store</h1>
    <input type="text" name ="id" placeholder="Your Userid" required="">
    <input type="text" name ="name" placeholder="Your Name" required="">
    <input type="text" name ="address" placeholder="Your Address" required="">
    <input type="password" name="password" id="password" placeholder="Choose Password" onchange="return check_pass()" required="">
    <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password" onchange="return check_pass()" required="">               
    <button type="submit" id="submit">Register</button>    
</form>
<!-- //Modal2 -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>