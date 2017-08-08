<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Mens Wear</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--//tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>

</head>
<body>
<%
HttpSession hs = request.getSession();
String userId = (String)hs.getAttribute("userId");
%>
<jsp:include page="header.jsp"></jsp:include>
<!-- /banner_bottom_agile_info -->
<div class="page-head_agile_info_w3l">
	<div class="container">
	<h3>Men's <span>Wear  </span></h3>
		 <div class="services-breadcrumb">
			<div class="agile_inner_breadcrumb">
			   <ul class="w3_short">
					<li><a href="home.jsp">Home</a><i>|</i></li>
					<li>Men's Wear</li>
				</ul>
			 </div>
		</div>
	</div>
</div>

		
<div class="single-pro">
	<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="images/m1.jpg" alt="" class="pro-image-front">
								<img src="images/m1.jpg" alt="" class="pro-image-back">
									<span class="product-new-top">New</span>
									
							</div>
							<div class="item-info-product ">
								<h4><a href="#">Formal Blue Shirt</a></h4>
								<div class="info-product-price">
										<span class="item_price">&#8360;599</span>
										<del>&#8360;800</del>
								</div>
								<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
									<form action="/Project1.1/CartController">
										<fieldset>
											<input type="hidden" name="qty" value="1" />
											<input type="hidden" name="item_name" value="Formal Blue Shirt" />
											<input type="hidden" name="amount" value="599" />
											<input type="hidden" name="productId" value="101" />
											<input type="hidden" name="currency_code" value="INR" />
											<input type="submit" name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>									
							</div>
						</div>
					</div>
					<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="images/m2.jpg" alt="" class="pro-image-front">
								<img src="images/m2.jpg" alt="" class="pro-image-back">
									<span class="product-new-top">New</span>
									
							</div>
							<div class="item-info-product ">
									<h4><a href="#">Full Sleeve Sweatshirt</a></h4>
									<div class="info-product-price">
										<span class="item_price">&#8360;699</span>
										<del>&#8360;900</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
										<form action="/Project1.1/CartController">
											<fieldset>
												<input type="hidden" name="qty" value="1" />
												<input type="hidden" name="item_name" value="Full Sleeve Sweatshirt" />
												<input type="hidden" name="amount" value="699" />
												<input type="hidden" name="productId" value="102" />
												<input type="hidden" name="currency_code" value="INR" />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>									
								</div>
						</div>
					</div>
                          <div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="images/m3.jpg" alt="" class="pro-image-front">
								<img src="images/m3.jpg" alt="" class="pro-image-back">
									<span class="product-new-top">New</span>
									
							</div>
							<div class="item-info-product ">
									<h4><a href="#">Dark Blue Track Pants</a></h4>
									<div class="info-product-price">
										<span class="item_price">&#8360;1099</span>
										<del>&#8360;1200</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
										<form action="/Project1.1/CartController">
											<fieldset>
												<input type="hidden" name="qty" value="1" />
												<input type="hidden" name="item_name" value="Dark Blue Track Pants" />
												<input type="hidden" name="amount" value="1099" />
												<input type="hidden" name="productId" value="103" />
												<input type="hidden" name="currency_code" value="INR" />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>										
								</div>
						</div>
					</div>
					<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="images/m4.jpg" alt="" class="pro-image-front">
								<img src="images/m4.jpg" alt="" class="pro-image-back">
									<span class="product-new-top">New</span>
									
							</div>
							<div class="item-info-product ">
									<h4><a href="#">Round Neck Black T-Shirt</a></h4>
									<div class="info-product-price">
										<span class="item_price">&#8360;399</span>
										<del>&#8360;500</del>
									</div>
									<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
										<form action="/Project1.1/CartController">
											<fieldset>
												<input type="hidden" name="qty" value="1" />
												<input type="hidden" name="item_name" value="Round Neck Black T-Shirt" />
												<input type="hidden" name="amount" value="399" />
												<input type="hidden" name="productId" value="104" />
												<input type="hidden" name="currency_code" value="INR" />
												<input type="submit" name="submit" value="Add to cart" class="button" />
											</fieldset>
										</form>
									</div>									
								</div>
						</div>
					</div>
					<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="images/m5.jpg" alt="" class="pro-image-front">
								<img src="images/m5.jpg" alt="" class="pro-image-back">
									<span class="product-new-top">New</span>
									
							</div>
							<div class="item-info-product ">
								<h4><a href="#">Men's Black Jeans</a></h4>
								<div class="info-product-price">
									<span class="item_price">&#8360;1299</span>
									<del>&#8360;1500</del>
								</div>
								<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
									<form action="/Project1.1/CartController">
										<fieldset>
											<input type="hidden" name="qty" value="1" />
											<input type="hidden" name="item_name" value="Men's Black Jeans" />
											<input type="hidden" name="amount" value="1299" />
											<input type="hidden" name="productId" value="105" />
											<input type="hidden" name="currency_code" value="INR" />
											<input type="submit" name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>									
							</div>
						</div>
					</div>
						<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="images/m7.jpg" alt="" class="pro-image-front">
								<img src="images/m7.jpg" alt="" class="pro-image-back">
									<span class="product-new-top">New</span>
									
							</div>
							<div class="item-info-product ">
								<h4><a href="#">Analog Watch</a></h4>
								<div class="info-product-price">
									<span class="item_price">&#8360;3089</span>
									<del>&#8360;3600</del>
								</div>
								<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
									<form action="/Project1.1/CartController">
										<fieldset>
											<input type="hidden" name="qty" value="1" />
											<input type="hidden" name="item_name" value="Analog Watch" />
											<input type="hidden" name="amount" value="3089" />
											<input type="hidden" name="productId" value="106" />
											<input type="hidden" name="currency_code" value="INR" />
											<input type="submit" name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>										
							</div>
						</div>
					</div>
						<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="images/m6.jpg" alt="" class="pro-image-front">
								<img src="images/m6.jpg" alt="" class="pro-image-back">
									<span class="product-new-top">New</span>
									
							</div>
							<div class="item-info-product ">
								<h4><a href="#">Reversible Belt</a></h4>
								<div class="info-product-price">
									<span class="item_price">&#8360;169</span>
									<del>&#8360;200</del>
								</div>
								<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
									<form action="/Project1.1/CartController">
										<fieldset>
											<input type="hidden" name="qty" value="1" />
											<input type="hidden" name="item_name" value="Reversible Belt" />
											<input type="hidden" name="amount" value="169" />
											<input type="hidden" name="productId" value="107" />
											<input type="hidden" name="currency_code" value="INR" />
											<input type="submit" name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>									
							</div>
						</div>
					</div>
						<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img src="images/m8.jpg" alt="" class="pro-image-front">
								<img src="images/m8.jpg" alt="" class="pro-image-back">
									<span class="product-new-top">New</span>
									
							</div>
							<div class="item-info-product ">
								<h4><a href="#">Party Men's Blazer</a></h4>
								<div class="info-product-price">
									<span class="item_price">&#8360;2349</span>
									<del>&#8360;3000</del>
								</div>
								<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
									<form action="/Project1.1/CartController">
										<fieldset>
											<input type="hidden" name="qty" value="1" />
											<input type="hidden" name="item_name" value="Party Men's Blazer" />
											<input type="hidden" name="amount" value="2349" />
											<input type="hidden" name="productId" value="108" />
											<input type="hidden" name="currency_code" value="INR" />
											<input type="submit" name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>									
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
</div>
<!-- //mens -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
