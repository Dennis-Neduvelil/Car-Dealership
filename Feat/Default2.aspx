<%@ Page Title="" Language="C#" MasterPageFile="~/Feat/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function () { $(".memenu").memenu(); });</script>	
<!-- /start menu -->
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
    </head>

<%--    <marquee><div>
    
    </div></marquee>
    </div>
<marquee direction="up">
    
</marquee>--%>

    <div class="featured_section_w3l">
     <div class="featured_section_w3l">
		<div class="container">
		      <h3 class="tittle">FEATURED CARS</h3>
	               <div class="inner_tabs">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">

    <ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">UpComing cars</a></li>
							<li role="presentation"><a href="Default2.aspx" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">Popular</a></li>
							<li role="presentation"><a href="Default2.aspx" role="tab" id="tree-tab" data-toggle="tab" aria-controls="tree">Just Launched</a></li>
							
						</ul>
            </div>
                       </div>
            </div>
         </div>
        </div>




   
   <div class="login_sec" >


   

    <asp:TextBox ID="txt_due_date" runat="server" ></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txt_due_date_CalendarExtender" runat="server" BehaviorID="txt_due_date_CalendarExtender" TargetControlID="txt_due_date">
                </ajaxToolkit:CalendarExtender><asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

       </div>
     <div class="columns twelve large-12" style="height:500px; width:200px;">
      <div class="row flexslider-row">
        <div class="columns twelve large-12 plr0">
          <div class="flexslider">
            <ul class="slides">
         
              <li ><img src="images/2017-Toyota-Corolla-0sw.jpg" alt=""/></li>
              <li ><img src="images/3e57e5e71f941b.jpg" alt=""/></li>
              <li ><img src="images/6.jpg" alt=""/></li>
                    
            </ul>
          </div>
        </div>
      </div>
         </div>
 
    


    <asp:Button ID="Button2" runat="server" Text= "Button"  class="badge" />
    <div class="container">
    <div class="row">
        <div class="form-group col-lg-4">
            
             <div class="glyphicon glyphicon-search">
            <asp:TextBox ID="TextBox2" CssClass="thumbnail"  placeholder="Enter Your Query" runat="server"></asp:TextBox>
                 </div>
            </div>
        </div>
        </div>
    <div class="featured">
        <asp:DataList ID="DataList1" runat="server" CellSpacing="10" RepeatDirection="Horizontal">
            <ItemTemplate>
               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# string.Concat("~/user/Single_Car_View.aspx?id=", Eval("id_img")) %>'  class="fancyboxhd fancybox.iframe" >
                       <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("path") %>' Height="100px" Width="100px" />
                         </asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
    </div>
           <%-- <input id="txtName" class="form-control input-sm" />--%>
           
 <%--     </div>
            </div>
        <div class="col-lg-4"></div>
        <div class="col-lg-4"></div>
    </div>
</div>

    <div class="input-group">
        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"  Width="100px"></asp:TextBox>
    
    <span class="input-group-addon">
        <i class="fa fa-search"></i>
    </span>
</div>--%>
    <table>
        <tr>

    
                <td>
                    <asp:FileUpload ID="fup_item1" runat="server" CssClass="thumbnail" ForeColor="#996600" />
                </td>
                <td>
                     <asp:Button ID="bt_upload1" CssClass="thumbnail active" runat="server" Text="Upload"   ForeColor="#996600" OnClick="bt_upload1_Click1" />
                </td>
                <td>
                    <asp:Image ID="image1" runat="server" CssClass="img-thumbnail" Width="80px" Height="60px"/>
                </td>
        <td>
              <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </td>
        </tr>
          
        </table>


    <div>
        <input id="Text1" type="text"  />
        <asp:TextBox ID="TextBox1" placeholder="enter name" style="margin-left:100px; background: url(../images/find.PNG) no-repeat; background-position :100px;" runat="server"></asp:TextBox>
    </div>


    <div class="form-group has-feedback">
    <label class="control-label" for="inputSuccess2">
         <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" style="margin-left:10px;" placeholder="Search here"  Width="180px"></asp:TextBox>
    <span class="glyphicon glyphicon-search form-control-feedback" style="margin-left:0px; margin-top:-28px; top: 25px; right: 0; width: 32px; left: 130px;"></span>
        </label>
</div>


   <%--<div class="b-animate-go">
         <asp:TextBox ID="TextBox1" runat="server" CssClass="thumbnail" style="width:100px; margin-left:1000px;" placeholder="search">
              
         </asp:TextBox>
      
   </div>--%>

<%--<marquee direction="down" width="250" height="200" behavior="alternate" style="border:solid">
  <marquee behavior="alternate">
    This text will bounce
  </marquee>
    
</marquee>--%>
    <form method="POST" action="page.aspx">
     <section  class="sky-form" style="width:200px; margin-left:100px;">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
							<ul class="dropdown-menu1">
								 <li><a href="">								               
								<div id="slider-range"></div>		
                                     					
								<input type="text"   name="amount" id="amount" />
                                    
                                    <%-- <asp:TextBox id="TextBox3" Text="hi" style="border: 0; font-weight: NORMAL;  font-family: 'Arimo', sans-serif;"  runat="server"></asp:TextBox>--%>	
							 </a></li>			
						  </ul>
				   </section>
        </form>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
					 <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
					<script type='text/javascript'>//<![CDATA[ 
					    $(window).load(function () {
					        $("#slider-range").slider({
					            range: true,
					            min: 0,
					            max: 400000,
					            values: [8500, 350000],
					            slide: function (event, ui) {
					                $("#amount").val( + ui.values[0] + " - " + ui.values[1]);
					            }
					        });
					        $("#amount").val( + $("#slider-range").slider("values", 0) + " - " + $("#slider-range").slider("values", 1));
					        $("#amount").val( + $("#slider-range").slider("values", 0) + " - " + $("#slider-range").slider("values", 1));

					    });//]]> 
					</script>


    <div class="single-sec">
	 <div class="container">
    <div class="col-md-9 det">
        <div class="single_left">
            <div class="flexslider">
                
                <ul class="slides" id="divProduct" runat="server">






                </ul>
                  

            </div>

           
						  <script defer src="js/jquery.flexslider.js"></script>
						<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

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
    </div>
         </div>
        </div>
    <a href="#" class="right">
        <img src="images/avatar.png" class="pre-scrollable" />
    </a>
   =
</asp:Content>

