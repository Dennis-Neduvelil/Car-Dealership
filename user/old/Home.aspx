<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_maruthi.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="user_Home" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <title>Wedding Store A Ecommerce Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="../js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="../css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="../js/memenu.js"></script>
<script>$(document).ready(function () { $(".memenu").memenu(); });</script>	
<!-- /start menu -->

           <link href="../css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="../css/font-awesome.min.css" />
	<link rel="stylesheet" href="../css/animate.css" />
	<link rel="stylesheet" href="../css/overwrite.css" />
	<link href="../css/animate.min.css" rel="stylesheet" />
	<link href="../css/style1.css" rel="stylesheet" />	



     <style>
         .page-loader {
  position: fixed;
  background: #000;
  bottom: 0;
  right: 0;
  left: 0;
  top: 0;
  z-index: 9998;
}

.loader {
  position: absolute;
  border-left: 2px solid #ffffff;
  border-top: 2px solid rgba(255, 255, 255, 0.2);
  border-right: 2px solid rgba(255, 255, 255, 0.2);
  border-bottom: 2px solid rgba(255, 255, 255, 0.2);
  height: 46px;
  width: 46px;
  left: 50%;
  top: 50%;
  margin: -23px 0 0 -23px;
  text-indent: -9999em;
  font-size: 10px;
  z-index: 9999;
  -webkit-animation: load 0.8s infinite linear;
  -moz-animation: load 0.8s infinite linear;
  ms-animation: load 0.8s infinite linear;
  o-animation: load 0.8s infinite linear;
  animation: load 0.8s infinite linear;
}

.loader,
.loader:after {
  border-radius: 50%;
  width: 46px;
  height: 46px;
}

@-webkit-keyframes load {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

@keyframes load {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

     </style>



     <div class="cart box_1" >
                 <asp:TextBox ID="txt_search" runat="server" class="form-control" AutoPostBack="True" placeholder="Search here"  style=" margin-left:-30px; background: url(../images/search.GIF) no-repeat; background-position-x:170px;"  OnTextChanged="txt_search_TextChanged1" ></asp:TextBox>
			 <cc1:AutoCompleteExtender  ID="AutoCompleteExtender1" runat="server" TargetControlID="txt_search"
                 MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="100" 
                 ServiceMethod="getTitle" ></cc1:AutoCompleteExtender>
         </div>

  <%-- <div class="banner" style="width:1500px; height:100px; background-image:url(../images/banner-inner.JPG)" >
	 <div class="container">
	 </div>
</div>--%>
<!---->
  
    <%--<div class="responsive" style="width: 300px; margin-left: 1100px; margin-right: 0px;">
        <div class="form-group has-feedback responsive">
            <label class="control-label responsive" for="inputSuccess2" style="margin-right: -10px;">
                <asp:TextBox ID="txt_search" Text="" CssClass="form-control responsive" runat="server" Style="margin-left: 10px;" placeholder="Search here" Width="180px" OnTextChanged="txt_search_TextChanged" AutoPostBack="True"></asp:TextBox>
                 <cc1:AutoCompleteExtender  ID="AutoCompleteExtender1" runat="server" TargetControlID="txt_search"
                 MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="100" 
                 ServiceMethod="getTitle" ></cc1:AutoCompleteExtender>
                <span class="glyphicon glyphicon-search form-control-feedback responsive" style="margin-left: 10px; margin-top: -28px; top: 27px; right: 0; width: 32px; left: 130px;"></span>
            </label>
        </div>
    </div>--%>
       


<div class="welcome" style="margin-top:-50px; margin-bottom:-20px;">
	 <div class="container">
		 <div class="col-md-3 welcome-left">
			 <h2>Welcome to our family</h2>
		 </div>
		 <div class="col-md-9 welcome-right" >
			 <h3>A DYNAMIC NEW WORLD IS HERE</h3>
			 <p>Welcome to Maruti Suzuki ARENA, our new innovative showrooms that will change the way you experience cars.
Step into our newly designed spaces that create a warm, friendly and dynamic environment for you to begin a new journey with us.
Whether it is choosing your car, upgrading or accessorizing, Maruti Suzuki Arena brings the best of digital technology to a fantastic new
car-buying experience.
Now enjoy seamless online and offline sales experience through our new website, sales app and various interactive screens at our Maruti
Suzuki Arena showrooms. Begin your journey.</p>
		 </div>
	 </div>
</div>
<!---->

     <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>

        

     <%-- <div class="slider">		
      
		<div id="about-slider">
			<div id="carousel-slider" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators visible-xs">
					<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-slider" data-slide-to="1"></li>
					<li data-target="#carousel-slider" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner">
					<div class="item active">						
						<img src="../images/wall2.jpg" class="img-responsive" alt="" />
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2><span> Choose Your Rider !</span></h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="Live Demo" id="btn_demo" runat="server" class="btn btn-primary btn-lg" required="required">Live Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="Get Now" class="btn btn-primary btn-lg" required="required">Get Now</button>
									</div>
								</form>
							</div>
						</div>
				    </div>
			
				    <div class="item">
						<img src="../images/wall3.jpg" class="img-responsive" alt="" />
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.0s">								
								<h2>All New Innova Crista</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.3s">								
								<p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.6s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase" class="btn btn-primary btn-lg" onclick="~/user/Home.aspx" required="required">Live Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="subscribe" class="btn btn-primary btn-lg" onclick="~/user/Home.aspx" required="required">Get Now</button>
									</div>
								</form>
							</div>
						</div>
				    </div> 
				    <div class="item">
						<img src="../images/wall4.jpg" class="img-responsive" alt="" />
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2>Modern Design</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase" class="btn btn-primary btn-lg" required="required">Live Demo</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="subscribe" class="btn btn-primary btn-lg" required="required">Get Now</button>
									</div>
								</form>
							</div>
						</div>
				    </div> 
				</div>
				
				<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
					<i class="fa fa-angle-left"></i> 
				</a>
				
				<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
					<i class="fa fa-angle-right"></i> 
				</a>
			</div> <!--/#carousel-slider-->
		</div><!--/#about-slider-->
	</div><!--/#slider-->--%>
    
     

    <%--<script src="../js/jquery-2.1.1.min.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>	
	<script src="../js/parallax.min.js"></script>
	<script src="../js/wow.min.js"></script>
	<script src="../js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script src="../js/functions.js"></script>
	<script>
	    wow = new WOW(
         {

         })
            .init();
	</script>	--%>



<div class="bride-grids">
	 <div class="container">
		 <div class="col-md-4 bride-grid">
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="../images/banner1.jpg" alt=""/>
						<figcaption>
							<h4>Nullam molestie </h4>
							<p>In sit amet sapien eros Integer in tincidunt labore et dolore magna aliqua</p>																
						</figcaption>			
				 </figure>
				 <div class="clearfix"></div>
				 <h3>Bold</h3>
			 </div>
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="../images/banner2.jpg" alt=""/>
						<figcaption>
							<h4>Inspirational</h4>
							<p>Baleno RS Special Edition Limitted Stock Hurry Up!!!!</p>																
						</figcaption>			
				 </figure>	
				 <div class="clearfix"></div>
				 <h3>Inspirational</h3>
			 </div>
		 </div>
		 <div class="col-md-4 bride-grid">
				<div class="content-grid l-grids">
                    <figure class="effect-bubba">
						<img src="../images/banner-logo1.jpg" alt=""/>
                        <figcaption>
							<h4> Drift And Mud </h4>

							<p>Etiam fermentum consectetur nulla, sit amet dapibus orci sollicitudin vel. Nulla consequat turpis in molestie fermentum. In ornare, tellus non interdum ultricies, elit ex lobortis ex, aliquet accumsan arcu tortor in leo. </p>																
						</figcaption>	
                        </figure>
						
				 <h3>Perfomence</h3>
			 </div>
		 </div>
		 <div class="col-md-4 bride-grid">
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="../images/banner4.jpg" alt=""/>
						<figcaption>
							<h4>Nullam molestie </h4>
							<p>In sit amet sapien eros Integer in tincidunt labore et dolore magna aliqua</p>																
						</figcaption>			
				 </figure>	
				 <div class="clearfix"></div>
				 <h3>Active</h3>
			 </div>
			 <div class="content-grid l-grids">
				 <figure class="effect-bubba">
						<img src="../images/banner3.jpg" alt=""/>
						<figcaption>
							<h4>Nullam molestie </h4>
							<p>In sit amet sapien eros Integer in tincidunt labore et dolore magna aliqua</p>																
						</figcaption>			
				 </figure>
					<div class="clearfix"></div>
				 <h3>Unique</h3>
			 </div>
		 </div>
		 <div class="clearfix"></div>
	 </div>
</div>
    <div class="container" id="divArrival" runat="server">


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
                    <script type="text/javascript" src="../js/jquery.flexisel.js"></script>

        
         </div>
</asp:Content>

