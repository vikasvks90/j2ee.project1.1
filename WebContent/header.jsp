<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopper Store</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all"/> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>

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

<!-- header-bot -->
<div class="header-bot">
	<div class="header-bot_inner_wthreeinfo_header_mid">
		
		<!-- header-bot -->
		<div class="logo_agile">
			<h1><a href="home.jsp"><span>S</span>hopper Store</a></h1>
		</div>
        <!-- header-bot -->
        
		<div class="clearfix"></div>
	</div>
</div>
<!-- header-bot -->

<!-- banner -->

<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">
					<li class=" menu__item"><a class="menu__link" href="home.jsp">Home</a></li>
					<li class=" menu__item"><a class="menu__link" href="about.jsp">About</a></li>
					<li class=" menu__item"><a class="menu__link" href="mens.jsp">Men's Wear</a></li>
					<li class=" menu__item"><a class="menu__link" href="womens.jsp">Women's Wear</a></li>
					<li class=" menu__item"><a class="menu__link" href="contact.jsp">Contact Us</a></li>
					<li class=" menu__item"><a class="menu__link" href="cart.jsp">Shopping Cart</a></li>
					
					
				   	<%
				   	HttpSession hs = request.getSession();
				   	String userName = (String)hs.getAttribute("userName");
				   	%>
				   	<li class=" menu__item"><a class="menu__link" href="#">Hi&nbsp;<%=userName%>!</a></li>
					<li class=" menu__item"><a class="menu__link" href="/Project1.1/LogoutController">Log Out</a></li>
				  </ul>
				</div>
			  </div>
			</nav>	
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- banner -->
</body>
</html>