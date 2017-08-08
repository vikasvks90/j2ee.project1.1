<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver"); %>
<!DOCTYPE html>
<html>
<head>
<title>Shopping Bag</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--//tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="js/validations.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
String username = "vikas";
String password = "vikas";
Connection con = DriverManager.getConnection(dbURL, username, password);
%>
<!-- /banner_bottom_agile_info -->
<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>Shopping <span>Bag</span></h3>
			<!--/w3_short-->
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">
						   <ul class="w3_short">
								<li><a href="home.jsp">Home</a><i>|</i></li>
								<li>Cart</li>
							</ul>
						 </div>
				</div>
	   <!--//w3_short-->
	</div>
</div>
<!-- /banner_bottom_agile_info -->
    <div class="banner_bottom_agile_info">
	    <div class="container">
			<div class="agile_ab_w3ls_info">
			<form class="buttons center" action="/Project1.1/OrdersController">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Select</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
						</tr>
					</thead>
					<tbody>
						<%
						HttpSession hs = request.getSession();
						String userId = (String)hs.getAttribute("userId");
						PreparedStatement pst1 = con.prepareStatement("select * from cart inner join product on cart.product_id=product.product_id and cart.user_id=?");
						pst1.setString(1,userId);
						ResultSet rs1 = pst1.executeQuery();
						while(rs1.next()){
						%>
						<tr>
							<td><input type="checkbox" name="select" value=<%= rs1.getString("product_id")%>></td>
							<td><%= rs1.getString("product_name")%></td>
							<td><input type="text" placeholder=<%= rs1.getString("qty")%> name="qty"></td>
							<td>&#8360;<%= rs1.getInt("product_price")%></td>
						</tr>	
						<%	
						}
						%>		  	  
					</tbody>
				</table>				
				<input type="submit" name="submit1" value="Checkout" onclick="return check_null()"/>
				<input type="submit" name="submit2" value="Remove" onclick="return check_null()"/>
				<input type="submit" name="submit3" value="Continue Shopping"/>
			</form>		
		</div>    
	 </div> 
   </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>