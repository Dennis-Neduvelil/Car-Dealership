<%@ Page Title="" Language="C#" MasterPageFile="~/Feat/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="featured">
	 <div class="container" id="divProduct" runat="server">

         </div>
         </div>      <script type="text/javascript" src="../JS/jquery.min.js">
    </script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            ShowImagePreview();
        });
        // Configuration of the x and y offsets
        function ShowImagePreview() {
            xOffset = -20;
            yOffset = 40;

            $("a.preview").hover(function (e) {
                this.t = this.title;
                this.title = "";
                var c = (this.t != "") ? "<br/>" + this.t : "";
                $("body").append("<p id='preview'><img src='" + this.href + "' alt='Image preview' />" + c + "</p>");
                $("#preview")
                .css("top", (e.pageY - xOffset) + "px")
                .css("left", (e.pageX + yOffset) + "px")
                .fadeIn("slow");
            },

        function () {
            this.title = this.t;
            $("#preview").remove();
        });

            $("a.preview").mousemove(function (e) {
                $("#preview")
                .css("top", (e.pageY - xOffset) + "px")
                .css("left", (e.pageX + yOffset) + "px");
            });
        };

    </script>
    /////////////////////////////////////////
 <style type="text/css">
     #preview {
         position: absolute;
         border: 3px solid #ccc;
         background: #333;
         padding: 5px;
         display: none;
         color: #fff;
         box-shadow: 4px 4px 3px rgba(103, 115, 130, 1);
     }
 </style>    
        <img class="preview" tooltip='../images/banner-logo1.jpg'  src="../images/banner-logo1.jpg" />
        <a href="Default.aspx" style="color: #FF9900">click her
            <img src="../images/5_Super-White.jpg" />
        </a>






    	<div class="featured_section_w3l col-md-3">
		<div class="container">
		      <h3 class="tittle">FEATURED CARS</h3>
	               <div class="inner_tabs">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-pills nav-stacked" role="tablist">
							<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions1" aria-expanded="true">UpComing cars</a></li>
							<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours1">Popular</a></li>
							<li role="presentation"><a href="#tree" role="tab" id="tree-tab" data-toggle="tab" aria-controls="tree1">Just Launched</a></li>
                            <li role="presentation"><a href="#treee" role="tab" id="A11" data-toggle="tab" aria-controls="treee1">Justtt Launched</a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
							   
                                <img src="../images/9.jpg" />
                                   <div class="col-md-8">
                                    <%-- tab of basic details--%>
                                    <div class="row">
                                        <div class="col-md-11 col-md-offset-1 col-md-xs-0 col-xs-offset-0" id="div_basic_details">
                                            <ol class="breadcrumb" style="background-color: #0099FF;">
                                                <li>
                                                    <h3 style="font-family: 'Microsoft YaHei'; color: #FFFFFF;">Basic Details</h3>
                                                </li>
                                            </ol>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label1" runat="server" Text="Car Name" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_car_name" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label2" runat="server" Text="Model Name" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_model_name" runat="server"></asp:Label>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label3" runat="server" Text="Model Year" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_model_year" runat="server"></asp:Label>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label4" runat="server" Text="Fuel Type" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_fuel" runat="server"></asp:Label>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label19" runat="server" Text="Maximum Delivary Date" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_max" runat="server"></asp:Label>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label20" runat="server" Text="Minimum Delivary Date" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_min" runat="server"></asp:Label>
                                            </div>
                                        </div>


                                    </div>
                                </div>

							</div>
							<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
								   
								 <img src="../images/6.jpg" />
                                 <div class="col-md-8">
                                    <%-- tab of External details--%>
                                    <div class="row">
                                        <div class="col-md-11 col-md-offset-1 col-md-xs-0 col-xs-offset-0">
                                            <ol class="breadcrumb" style="background-color: #0099FF;">
                                                <li>
                                                    <h3 style="font-family: 'Microsoft YaHei'; color: #FFFFFF;">External Details</h3>
                                                </li>
                                            </ol>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label5" runat="server" Text="Color Available" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">

                                                <asp:Label ID="lbl_color" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label6" runat="server" Text="Dimension" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_dim" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">

                                                <asp:Label ID="label7" runat="server" Text="About External" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">

                                                <asp:Label ID="lbl_ext_desc" runat="server"></asp:Label>
                                            </div>
                                        </div>



                                    </div>

                                </div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tree" aria-labelledby="tree-tab">
								
								 <img src="../images/8.jpg" />
                                <div class="col-md-8">
                                    <%-- tab of Internal details--%>
                                    <div class="row">
                                        <div class="col-md-11 col-md-offset-1 col-md-xs-0 col-xs-offset-0">
                                            <ol class="breadcrumb" style="background-color: #0099FF;">
                                                <li>
                                                    <h3 style="font-family: 'Microsoft YaHei'; color: #FFFFFF;">Internal Details</h3>
                                                </li>
                                            </ol>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label8" runat="server" Text="Power" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">

                                                <asp:Label ID="lbl_power" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label9" runat="server" Text="Mileage" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_mileage" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label10" runat="server" Text="Weight" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_weight" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label11" runat="server" Text="About Internal" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_int_desc" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

								
							</div>
                            	<div role="tabpanel" class="tab-pane fade" id="treee" aria-labelledby="A1">
								
								 <img src="images/22.jpg" />
                                     <div class="col-md-8 ">
                                    <%-- tab of Price details--%>
                                    <div class="row">
                                        <div class="col-md-11 col-md-offset-1 col-md-xs-0 col-xs-offset-0">
                                            <ol class="breadcrumb" style="width: 600px; background-color: #0099FF;">
                                                <li><a href="index.html">
                                                    <h3 style="font-family: 'Microsoft YaHei'; color: #FFFFFF;">Prize Details</h3>
                                                </a></li>

                                            </ol>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label12" runat="server" Text="Tax" Font-Size="15pt "></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_tax" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label13" runat="server" Text="About Tax" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_tax_desc" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label14" runat="server" Text="Insurance" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_insurance" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label15" runat="server" Text="About Insurance" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_insu_desc" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label16" runat="server" Text="Prize" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_prize" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label17" runat="server" Text="On Road Prize" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_orp" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                                                <asp:Label ID="label18" runat="server" Text="Booking Ammount" Font-Size="15pt"></asp:Label>
                                            </div>
                                            <div class="col-md-3 col-md-offset-3 col-md-xs-2 col-xs-offset-1">
                                                <asp:Label ID="lbl_book" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
								
							</div>
						</div>
					</div>//
				</div>
					
			</div>
		</div>
         <div class="gallery agile" id="gallery" runat="server">
		 <%--<div class="container">
			<h3 class="tittle">OUR ACCESSORIES</h3>
			<div class="agile_gallery_grids w3-agile">
				<ul class="clearfix demo">


					<li>
						<div class="gallery-grid1">
							<img src="images/a1.jpg" alt=" " class="img-responsive" />
							<div class="p-mask">
								<h4>Inter<span>cooler</span></h4>
								<p>Neque porro quisquam est, qui dolorem ipsum.</p>
							</div>
						</div>
					</li>
					

				</ul>
			
			</div>
		</div>--%>
	</div>     <script type="text/javascript" src="../JS/jquery.min.js">
    </script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            ShowImagePreview();
        });
        // Configuration of the x and y offsets
        function ShowImagePreview() {
            xOffset = -20;
            yOffset = 40;

            $("a.preview").hover(function (e) {
                this.t = this.title;
                this.title = "";
                var c = (this.t != "") ? "<br/>" + this.t : "";
                $("body").append("<p id='preview'><img src='" + this.href + "' alt='Image preview' />" + c + "</p>");
                $("#preview")
                .css("top", (e.pageY - xOffset) + "px")
                .css("left", (e.pageX + yOffset) + "px")
                .fadeIn("slow");
            },

        function () {
            this.title = this.t;
            $("#preview").remove();
        });

            $("a.preview").mousemove(function (e) {
                $("#preview")
                .css("top", (e.pageY - xOffset) + "px")
                .css("left", (e.pageX + yOffset) + "px");
            });
        };

    </script>
    /////////////////////////////////////////
 <style type="text/css">
     #preview {
         position: absolute;
         border: 3px solid #ccc;
         background: #333;
         padding: 5px;
         display: none;
         color: #fff;
         box-shadow: 4px 4px 3px rgba(103, 115, 130, 1);
     }
 </style>    <div class="single w3ls" id="div_display" runat="server">
		<%--<div class="container">
			<div class="col-md-8 single-left">
				<div class="sample1">
					<div class="carousel" style="height: 341px;">
						<ul>

							<li class=""> <img src="images/1.jpg" alt="quibusdam et aut offi">
                                 <div class="caption1	">
                                     <span>quibusdam et aut offi

                                     </span>

                                 </div>

							</li>


							</ul>
						<div class="controls">
							<div class="prev"></div>
							<div class="next"></div>
						</div>
					</div>
					<div class="thumbnails">
						<ul>


							<li class="">
                                 <div>
                                     <img src="images/1.jpg" alt=" ">

                                 </div> 

							</li>

							
						</ul>
					</div>
				</div>                </div>            </div>--%>        <script src="js/jquery-1.11.1.min.js"></script>
				<script src="js/jquery.light-carousel.js"></script> 
				<script>
				    $('.sample1').lightCarousel();
				</script> 
				<link href="css/light-carousel.css" rel="stylesheet" type="text/css">

<script src="js/bootstrap.js"></script>        </div>    <script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery.picEyes.js"></script>
				
<script src="js/bootstrap.js"></script>

    <div class="car-loan agile-w3">
					<div class="container">
    <div class="car-loan-mid w3l" id="div_loan" runat="server">
						<%-- <h3 class="tittle">MY PREFERRED CAR IS</h3>
						    <div class="categories">


									<div class="col-md-3 focus-grid">
										<a href="categories.html">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image">
                                                        <i class="fa fa-car">

                                                        </i>
													</div>
													<h4 class="clrchg">Hyundai Eon
													</h4>
												</div>
											</div>
										</a>
									</div>
									
								
									
									<div class="clearfix">

									</div>
									<div class="serch-button">
										<a href="#car-loan1" class="read hvr-shutter-in-horizontal scroll">Continue</a>
								</div>
							</div>--%>
						</div>
                        </div>
        </div>
    <div class="featured-ads" style="margin-top:0px;">
           <div class="row">
    <div class="tips w3l col-md-8 ">

				<div class="container"  id="div_upcoming"  runat="server">


				<%-- <div class="col-md-9 tips-info">




					 <div class="news-grid">
					    <div class="news-img up">
						  <a href="single.html"> <img src="images/f1.jpg" alt=" " class="img-responsive"></a>
						  <span class="price1">NEW</span>
						</div>
					    <div class="news-text coming">
						    <h3><a href="single.html">Mercedes-Benz C250 CDI</a></h3>
							<h5>Launched On: 07-Jun-2016</h5>
							<p class="news">Price: $ 30,000 Ex-showroom, New York</p>
							<h6>Not rated yet,<a href="single.html"> Be the first one to write a review</a></h6>
							<a href="price.html" class="read hvr-shutter-in-horizontal">Check on-road price</a>
							<ul class="p-t">
							  <li><a href="single.html">Photos</a></li>
							  <li><a href="single.html">All Versions</a></li>
							</ul>
					
						</div>
		
						<div class="clearfix"></div>
					 </div>	

					 
					 
								
				</div>	--%>

</div>
        </div>

			    <div class="col-md-3 col-lg-3 col-lg-offset-0 advice-right w3-agile" style="margin-top:4em;">
					<div class="blo-top">
						<div class="tech-btm one">
						<img src="images/1.jpg" class="img-responsive" alt="">
						</div>
					</div>
					<div class="blo-top">
						<div class="tech-btm">
						<h4>Sign up to our newsletter</h4>
						<p>Pellentesque dui, non felis. Maecenas male</p>
							<div class="name">
								 <form action="#" method="post">
									<input type="text" name="email" class="email" placeholder="Enter your email address" required="">
									<input type="submit" value="Subscribe">
								</form>
								<div class="clearfix"> </div>
						</div>
					</div>
					</div>
					<div class="blo-top1">
					<div class="agileits_twitter_posts">
					<h4>Twitter Posts</h4>
	
					<ul>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 01 day ago<span>Non numquam <a href="#">http://sd.ds/13jklf#</a>
							eius modi tempora incidunt ut labore et
							<a href="#">http://sd.ds/1389kjklf#</a>quo nulla.</span></li>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 02 day ago<span>Con numquam <a href="#">http://fd.uf/56hfg#</a>
							eius modi tempora incidunt ut labore et
							<a href="#">http://fd.uf/56hfg#</a>quo nulla.</span></li>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 03 day ago<span>Qon numquam <a href="#">http://gf.ds/gre21#</a>
							eius modi tempora incidunt ut labore et
							<a href="#">http://gf.ds/gre21#</a>quo nulla.</span></li>
					</ul>
					</div>
				</div>
					<div class="blo-top1 w3l">
						<div class="tech-btm">
						<h4>Top stories of the week </h4>
							<div class="blog-grids">
								<div class="blog-grid-left">
									<a href="single.html"><img src="images/f1.jpg" class="img-responsive" alt=""></a>
								</div>
								<div class="blog-grid-right">
									
									<h5><a href="single.html">Pellentesque dui, non felis. Maecenas male</a> </h5>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="blog-grids">
								<div class="blog-grid-left">
									<a href="single.html"><img src="images/f2.jpg" class="img-responsive" alt=""></a>
								</div>
								<div class="blog-grid-right">
									
									<h5><a href="single.html">Pellentesque dui, non felis. Maecenas male</a> </h5>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="blog-grids">
								<div class="blog-grid-left">
									<a href="single.html"><img src="images/f3.jpg" class="img-responsive" alt=""></a>
								</div>
								<div class="blog-grid-right">
									
									<h5><a href="single.html">Pellentesque dui, non felis. Maecenas male</a> </h5>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="blog-grids lost">
								<div class="blog-grid-left">
									<a href="single.html"><img src="images/f4.jpg" class="img-responsive" alt=""></a>
								</div>
								<div class="blog-grid-right">
									
									<h5><a href="single.html">Pellentesque dui, non felis. Maecenas male</a> </h5>
								</div>
								<div class="clearfix"> </div>
							</div>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
		
 </div>
        </div>




    <div class="on-road-price w3l" id="div_single" runat="server">
			<%--<div class="container">
			  <!--price-top1 -->
			 <div class="price-top">




			    <div class=" price-info">
			       <div class="col-md-5 price-img">
				     <div class="view second-effect">
												<a href="single.html" title="Catchy Carz">
													<img src="images/u1.jpeg" alt="" class="img-responsive">
													<div class="mask">
														<p>Catchy <span>Carz</span> </p>
													</div>
												</a>	
											</div>
					  <h4>Acura TLX</h4>
		
				   </div>
				   
                    <div class="col-md-4 price-text">
				       <div class="price-text-sec">
							
						   	<div class="clearfix"> </div>
						   <div class="inner-price">
						         <h5>Ex-Showroom Price</h5>
								 <p>8,55,850</p>
								<div class="clearfix"> </div>
						   </div>
						   <div class="inner-price">
						         <h5>RTO</h5>
								 <p>61,776</p>
								<div class="clearfix"> </div>
						   </div>
						   <div class="inner-price">
						         <h5>Insurance</h5>
								 <p>61,776</p>
								<div class="clearfix"> </div>
						   </div>
						   <div class="inner-price lost">
						         <h5>On-Road Price (New york)</h5>
								 <p>$ 9,79,403</p>
								<div class="clearfix"> </div>
						   </div>
						</div>
				   </div>
				   <div class="col-md-3 ad-benefits">
				       <ul>
						<li><a href="#"><i class="fa fa-check" aria-hidden="true"></i> Aliquam dapibus tincidunt</a></li>
						<li><a href="#"><i class="fa fa-check" aria-hidden="true"></i> Donec sollicitudin molestie</a></li>
						<li><a href="#"><i class="fa fa-check" aria-hidden="true"></i> Fusce feugiat malesuada odio</a></li>
						<li><a href="#"><i class="fa fa-check" aria-hidden="true"></i> Cum sociis natoque penatibus</a></li>
						<li><a href="#"><i class="fa fa-check" aria-hidden="true"></i> Magnis dis parturient montes</a></li>
						<li><a href="#"><i class="fa fa-check" aria-hidden="true"></i> Cum sociis natoque penatibus</a></li>
						<li><a class="get" href="#" data-toggle="modal" data-target="#myModal3">Get an instant Quote</a></li>
						<strong><i class="fa fa-phone-square" aria-hidden="true"></i>  8898087654</strong>
					</ul>
				   </div>
			       <div class="clearfix"> </div>
			     </div>




			     
			 </div>
				 <!--//price-top1 -->
				 	  <!--price-top2 -->
			
				 <!--//price-top4 -->
			</div>--%>
		</div>
  

    <div class="arrivals">
	 <div class="container">	
		 <h3>New Arrivals</h3>
		 <div class="arrival-grids">			 
			 <ul id="flexiselDemo1">
				 <li class="col-md-5">
					 <a href="product.html"><img src="images/a1.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Fusion Black Polyester Suits</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
				 </li>
				 <li class="col-md-5">
					 <a href="product.html"><img src="images/a2.jpg" alt=""/>
						<div class="arrival-info">
						 <h4>Vogue4All White Net Gowns</h4>
						 <p>Rs 14000</p>
						 <span class="pric1"><del>Rs 15000</del></span>
						 <span class="disc">[10% Off]</span>
					 </div>
					 <div class="viw">
						<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
				 </li>
				 <li>
					 <a href="product.html"><img src="images/a3.jpg" alt=""/>	
						<div class="arrival-info">
						 <h4>Platinum Waist Coat Set Navy</h4>
						 <p>Rs 4000</p>
						 <span class="pric1"><del>Rs 8500</del></span>
						 <span class="disc">[45% Off]</span>
					 </div>
					 <div class="viw">
						<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
				 </li>
				 <li>
				    <a href="product.html"> <img src="images/a4.jpg" alt=""/>	
						<div class="arrival-info">
						 <h4>La Fanatise White Net Gowns</h4>
						 <p>Rs 18000</p>
						 <span class="pric1"><del>Rs 21000</del></span>
						 <span class="disc">[8% Off]</span>
					 </div>
					 <div class="viw">
						<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</a>
					 </div>
					 <div class="shrt">
						<a href="#"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>Shortlist</a>
					 </div></a>
				 </li>
				</ul>
				<script type="text/javascript">
				    $(window).load(function () {
				        $("#flexiselDemo1").flexisel({
				            visibleItems: 4,
				            animationSpeed: 1000,
				            autoPlay: true,
				            autoPlaySpeed: 3000,
				            pauseOnHover: true,
				            enableResponsiveBreakpoints: true,
				            responsiveBreakpoints: {
				                portrait: {
				                    changePoint: 480,
				                    visibleItems: 1
				                },
				                landscape: {
				                    changePoint: 640,
				                    visibleItems: 2
				                },
				                tablet: {
				                    changePoint: 768,
				                    visibleItems: 3
				                }
				            }
				        });
				    });
				</script>
				<script type="text/javascript" src="js/jquery.flexisel.js"></script>			 
		  </div>
	 </div>
</div>

</asp:Content>

