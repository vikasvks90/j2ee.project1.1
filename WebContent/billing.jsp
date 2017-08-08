<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("oracle.jdbc.OracleDriver"); %>
<!DOCTYPE html>
<html>
<head>
<title>Order Placed</title>
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
			<h3>Your <span>Bill</span></h3>
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
			<form class="buttons center" action="home.jsp">
				<table class="table table-striped">
					<%
						int total = 0;
						HttpSession hs = request.getSession();
						String userId = (String)hs.getAttribute("userId");
						PreparedStatement pst1 = con.prepareStatement("select * from billing inner join users on billing.user_id=users.user_id and billing.user_id=? and rownum=1 order by billing.billing_id desc");
						pst1.setString(1,userId);
						ResultSet rs1 = pst1.executeQuery();
						while(rs1.next()){
					%>
					<thead>
						<tr>
							<th colspan="2"><h1>Congrats&nbsp;<%=rs1.getString("user_name")%>,&nbsp;your order has been placed successfully!!!</h1></th>
						</tr>
					</thead>
					<tbody>	
						<tr>
							<td>Total Bill Amount</td>
							<td>&#8360;<%= rs1.getInt("total_bill")%></td>
						</tr>	
					</tbody>
					<%	
					}
					%>	
				</table>			
				<input type="submit" value="Continue Shopping"/>
			</form>		
		</div>    
	 </div> 
   </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>