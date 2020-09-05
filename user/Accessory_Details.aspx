<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Accessory_Details.aspx.cs" Inherits="user_Accessory_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Classic Style a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Single :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="Acc/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="Acc/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="Acc/js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="Acc/js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="Acc/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="Acc/animate.min.css" rel="stylesheet"> 
<script src="Acc/wow.min.js"></script>
<script>
    new WOW().init();
</script>
      
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <style>
                .h {
                    position: relative;
                    letter-spacing: 4px;
                    text-align: center;
                    font-weight: 400;
                    font-size: 30px;
                    color: #111;
                    margin: 0 0 70px;
                    font-family: "Roboto Condensed", sans-serif;
                    text-transform: uppercase;
                    letter-spacing: 2px;
                }
            </style>
            <h3 id="div_product_name" runat="server" class="h" style=""></h3>
      <div class="col-md-6 animated wow fadeInRight" data-wow-delay=".5s">
				<div class="col-md-12 grid-im">		
		<div class="flexslider">
               <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
			  <ul class="slides">
			    <li data-thumb='<%#Eval("ac_img1") %>'>
			        <div class="thumb-image"> <img src='<%#Eval("ac_img1") %>' data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <li data-thumb='<%#Eval("ac_img2") %>'>
			         <div class="thumb-image"> <img src='<%#Eval("ac_img2") %>' data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <li data-thumb='<%#Eval("ac_img3") %>'>
                    <div class="thub-image"><img src= '<%#Eval("ac_img3") %>' data-imagezoom="true" class="img-responsive"> </div>
			    </li> 
			  </ul>
                        </ItemTemplate>
                   </asp:ListView>
		</div>
	</div>	
          </div>
            <div class="col-md-6">
            		<div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Product Description</span></li>
							
							  <div class="clearfix"></div>  
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2>
                                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1" style="display:block">
						<div class="facts1">
					
						<div class="color"><p>Name</p>
							<span id="name" runat="server" >NA</span>
							<div class="clearfix"></div>
						</div>

						<div class="color"><p>Brand</p>
							<span id="brand" runat="server">NA</span>
							<div class="clearfix"></div>
						</div>
                        <div class="color"><p>Type</p>
							<span id="type" runat="server" >NA</span>
							<div class="clearfix"></div>
						</div>
                        <div class="color"><p>Price</p>
							<span id="price" runat="server" >NA</span>
							<div class="clearfix"></div>
						</div>
                        <div class="color" style="left:auto"><p>Warrenty</p>
							<span id="warrenty" runat="server" >NA</span>
							<div class="clearfix"></div>
						</div>
                         <div class="form-group" >
                             <a href=""  class="btn btn-block btn-round btn-b" target="_blank" id="acc_link" runat="server"  style="background-color:#eeeeee;color:black">Buy Now</a>
                        

                    </div>	        
			 </div>

								</div>	
								</div>	
                                
                         </div>
                        </div>
                </div>
            <div style="left:auto;">
                <p>Description :</p>
                <span id="desc" runat="server" >NA</span>
            </div>
            <script src="Acc/js/imagezoom.js"></script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="Acc/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="Acc/flexslider.css" type="text/css" media="screen" />

<script>
    // Can also be used with $(document).ready()
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>

        </div>
    </form>
</body>
</html>
