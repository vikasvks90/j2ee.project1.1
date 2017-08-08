<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Shopper Store</title>
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
<jsp:include page="header.jsp"></jsp:include>
<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner" role="listbox">
			<div class="item active"> 
				<div class="container">
					<div class="carousel-caption">
						<h3>The Biggest <span>Sale</span></h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2" href="mens.jsp">Shop Now </a>
					</div>
				</div>
			</div> 
		</div>
    </div> 
	
  <!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
	<div class="container">
		<h3 class="wthree_text_info">What's <span>Trending</span></h3>
	
		<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
			<a href="womens.jsp">
			   <div class="bb-left-agileits-w3layouts-inner grid">
					<figure class="effect-roxy">
							<img src="images/bb1.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3><span>S</span>ale </h3>
								<p>Upto 55%</p>
							</figcaption>			
						</figure>
			    </div>
			</a>
		</div>
		<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
		      
		       <div class="bb-middle-agileits-w3layouts grid">
		       <a href="mens.jsp">
	           <figure class="effect-roxy">
					<img src="images/bottom3.jpg" alt=" " class="img-responsive" />
					<figcaption>
						<h3><span>S</span>ale </h3>
						<p>Upto 55%</p>
					</figcaption>			
				</figure>
			  </a>
		      </div>
				
				
		      <div class="bb-middle-agileits-w3layouts forth grid">
		      <a href="mens.jsp">
				<figure class="effect-roxy">
					<img src="images/bottom4.jpg" alt=" " class="img-responsive">
					<figcaption>
						<h3><span>S</span>ale </h3>
						<p>Upto 65%</p>
					</figcaption>		
				</figure>
			  </a>
			  </div>
					
			  <div class="clearfix"></div>
	</div>
	</div>
    </div>
<!--/grids-->
      <div class="agile_last_double_sectionw3ls">
        <div class="col-md-6 multi-gd-img multi-gd-text ">
			<a href="womens.jsp"><img src="images/bot_1.jpg" alt=" "><h4>Flat <span>50%</span> offer</h4></a>
				
		</div>
		<div class="col-md-6 multi-gd-img multi-gd-text ">
			<a href="womens.jsp"><img src="images/bot_2.jpg" alt=" "><h4>Flat <span>50%</span> offer</h4></a>
		</div>
		<div class="clearfix"></div>
	   </div>							
<!--/grids-->
<!-- /new_arrivals --> 
	<div class="new_arrivals_agile_w3ls_info"> 
		<div class="container">
		    <h3 class="wthree_text_info">New <span>Arrivals</span></h3>		
				<div id="horizontalTab">
					<div class="resp-tabs-container">
					<!--/tab_one-->
						<div class="tab1">
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
										<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
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
						<!--//tab_one-->
						
						<div class="tab3">
								
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="images/b2.jpg" alt="" class="pro-image-front">
										<img src="images/b2.jpg" alt="" class="pro-image-back">
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="#">Puma Backpack</a></h4>
										<div class="info-product-price">
											<span class="item_price">&#8360;1399</span>
											<del>&#8360;2000</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
											<form action="/Project1.1/CartController">
												<fieldset>
													<input type="hidden" name="qty" value="1" />
													<input type="hidden" name="item_name" value="Puma Backpack" />
													<input type="hidden" name="amount" value="1399" />
													<input type="hidden" name="productId" value="109" />
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
										<img src="images/b3.jpg" alt="" class="pro-image-front">
										<img src="images/b3.jpg" alt="" class="pro-image-back">
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="#">Laptop Backpack</a></h4>
										<div class="info-product-price">
											<span class="item_price">&#8360;999</span>
											<del>&#8360;1200</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
											<form action="/Project1.1/CartController">
												<fieldset>
													<input type="hidden" name="qty" value="1" />
													<input type="hidden" name="item_name" value="Laptop Backpack" />
													<input type="hidden" name="amount" value="999" />
													<input type="hidden" name="productId" value="110" />
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
										<img src="images/b4.jpg" alt="" class="pro-image-front">
										<img src="images/b4.jpg" alt="" class="pro-image-back">
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="#">Travel Duffel Bag</a></h4>
										<div class="info-product-price">
											<span class="item_price">&#8360;1249</span>
											<del>&#8360;1500</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
											<form action="/Project1.1/CartController">
												<fieldset>
													<input type="hidden" name="qty" value="1" />
													<input type="hidden" name="item_name" value="Travel Duffel Bag" />
													<input type="hidden" name="amount" value="1249" />
													<input type="hidden" name="productId" value="111" />
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
										<img src="images/b5.jpg" alt="" class="pro-image-front">
										<img src="images/b5.jpg" alt="" class="pro-image-back">
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="#"> Hand-held Bag </a></h4>
										<div class="info-product-price">
											<span class="item_price">&#8360;1599</span>
											<del>&#8360;1990</del>
										</div>
										<div class="snipcart-details top_brand_home_details item_qty single-item hvr-outline-out button2">
											<form action="/Project1.1/CartController">
												<fieldset>
													<input type="hidden" name="qty" value="1" />
													<input type="hidden" name="item_name" value="Hand-held Bag" />
													<input type="hidden" name="amount" value="1599" />
													<input type="hidden" name="productId" value="112" />
													<input type="hidden" name="currency_code" value="INR" />
													<input type="submit" name="submit" value="Add to cart" class="button" />
												</fieldset>
											</form>
										</div>										
									</div>
								</div>
							</div>									
						</div>
					</div>
				</div>											
			</div>
		</div>
	<div class="clearfix"></div>
<!-- //new_arrivals --> 
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
