<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver"); %>
<!DOCTYPE html>
<html>
<head>
<title>Your Orders</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--//tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="validations.js"></script>
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
			<h3>Your <span>Orders</span></h3>
			<!--/w3_short-->
				 <div class="services-breadcrumb">
						<div class="agile_inner_breadcrumb">
						   <ul class="w3_short">
								<li><a href="home.jsp">Home</a><i>|</i></li>
								<li>Orders</li>
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
			<form class="buttons center" action="/Project1.1/BillingController">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Total Price</th>
						</tr>
					</thead>
					<tbody>
						<%
						int total = 0;
						int grand_total = 0;
						int price = 0;
						int qty = 0;
						HttpSession hs = request.getSession();
						String userId = (String)hs.getAttribute("userId");
						PreparedStatement pst1 = con.prepareStatement("select * from orders inner join product on orders.product_id=product.product_id and orders.user_id=?");
						pst1.setString(1,userId);
						ResultSet rs1 = pst1.executeQuery();
						while(rs1.next()){
							price = rs1.getInt("product_price");
							qty = rs1.getInt("qty");
							total = price* qty;
							grand_total += total;
						%>
						<tr>
							<td><%= rs1.getString("product_name")%></td>
							<td><%= qty%></td>
							<td>&#8360;<%= price%></td>
							<td>&#8360;<%= total%></td>
						</tr>	
						<%	
						}
						%>	
					</tbody>
				</table>	
				<hr>
				<p class="cart-total right" align="right">
					<strong>Sub-Total</strong>:	&#8360;<%= grand_total%><br>
					<strong>GST (10%)</strong>: &#8360;<%= (int)grand_total * 0.10%><br>
					<strong>Total</strong>:&#8360;<%= (int)grand_total + grand_total * 0.10%><br>
				</p>
				<hr/>
				<input type="hidden" name="totalBill" value=<%= grand_total + grand_total * 0.10%>>	
				<input type="submit" name="submit1" value="Cancel Order"/>		
				<input type="submit" name="submit2" value="Place Order"/>
			</form>		
		</div>    
	 </div> 
   </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>