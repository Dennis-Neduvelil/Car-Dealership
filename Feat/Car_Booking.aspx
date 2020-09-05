<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Toyota.master" AutoEventWireup="true" CodeFile="Car_Booking.aspx.cs" Inherits="Feat_Car_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/style.css" rel="stylesheet" />
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
    <link href="../css/style.css" rel="stylesheet" />


    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-0">
        <div class="row">
            <div class="col-md-11 col-md-offset-1 col-md-xs-0 col-xs-offset-0" id="div_basic_details">
                <ol class="breadcrumb" style="background-color: #0099FF;">
                    <li>
                        <h3 style="font-family: 'Microsoft YaHei'; color: #FFFFFF;">Book Your Car</h3>
                    </li>
                </ol>
            </div>
            </div>

              <div class="row">
            <div class="tips w3l col-md-8 ">

                <div class="container" id="div_upcoming" runat="server">
                </div>
            </div>

        </div>
        


    <div class="container">

        <div class="row">
            <div class="col-md-8" style="background-color:#dcd6d6;">

                <div class="row" id="div_book" runat="server">
                   
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1 col-xs-3 col-xs-offset-1">
                            <asp:Label ID="lbl_ddl_fuel" runat="server" Text="Fuel Offered" Font-Size="20px"></asp:Label>
                        </div>
                        <div class="col-md-3 col-md-offset-0 col-md-xs-2 col-xs-offset-1">
                            <asp:DropDownList ID="ddl_fuel" runat="server" AutoPostBack="True" Style="border-color: skyblue; width: auto;" CssClass="item_add item">
                                <asp:ListItem>--Select Fuel--</asp:ListItem>
                                <asp:ListItem>Petrol</asp:ListItem>
                                <asp:ListItem>Diesal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1">
                           <asp:Label ID="lbl_select_color" runat="server" Text="Color Offered" Font-Size="20px"></asp:Label>
                        </div>
                        <div class="col-md-5 col-md-offset-0">
                            <asp:DropDownList ID="ddl_color" AutoPostBack="true" CssClass="item_add item" runat="server"></asp:DropDownList>
                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1" >
                            <asp:Label ID="Label2" runat="server" Text="Choose Option" Font-Size="20px"></asp:Label>
                        </div>
                        <div class="col-md-7 col-md-offset-0" >
                            <asp:RadioButtonList ID="radio_option" CssClass="item_add item"  runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="radio_option_SelectedIndexChanged">
                                <asp:ListItem>Full Option</asp:ListItem>
                                <asp:ListItem>Customise</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 col-md-offset-0">
                            <asp:DataList ID="DataList2" runat="server" style="background-color:#dcd6d6;"  RepeatDirection="Horizontal" CssClass="thumbnail" OnItemCommand="DataList2_ItemCommand" OnItemDataBound="DataList2_ItemDataBound" >
                                <ItemTemplate>
                                    <div class="row">
                                    <div class="img-responsive col-md-12  col-md-offset-0">
                                        <asp:Label ID="lbl_optn_name" runat="server" Text='<%# Eval("car_option_name") %>'></asp:Label>
                                       
                                    </div>
                                        </div>
                                     <div class="row">
                                    <div class="img-responsive col-md-12 col-md-offset-1">
                                        <asp:LinkButton ID="lnk_btn_opt" runat="server" CssClass="read hvr-shutter-in-horizontal" CommandArgument='<%# Eval("car_option_details_id") %>' CommandName="options">Select</asp:LinkButton>
                                    </div>
                                         </div>
                                
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="row">
                         <div class="col-md-1 col-md-offset-0 col-md-xs-2 col-xs-offset-1" style="margin-top:3em;">
                                
                             <span class="glyphicon glyphicon-usd" style=" margin-right: -3em" ></span>
                         </div>       
                         <div class="col-md-4 col-md-offset-0 col-md-xs-2 col-xs-offset-1" style="margin-top:2em; margin-left: -3em;">
                         <asp:TextBox ID="txt_orp" CssClass="item_add item" style="border-radius:5px 5px;  color:#FFFFFF" runat="server"></asp:TextBox>
                        </div>        
                        <div class="col-md-1" style="margin-top: 3em; margin-right: -3em">
                              <span class="glyphicon glyphicon-refresh"></span> 
                        </div>
                         
                        <div class="col-md-3 col-md-offset-0 col-md-xs-2 col-xs-offset-1" style="margin-top:2em;">  
                                      
                            <asp:Button ID="btn_reset_opt" Class="item_add items" runat="server"  Text="Reset Selection" OnClick="btn_reset_opt_Click"  />
                      
                        </div>
                        <div class="col-md-3 col-md-offset-0 col-md-xs-2 col-xs-offset-0" style="margin-top:2em;">
                            <asp:Button ID="btn_book" Class="item_add items" runat="server" Text="Book Now >>" OnClick="btn_book_Click"  />
                        </div>
                        <div class="col-md-1" style="margin-top: 3em; margin-left: -4em">
                              <span class="glyphicon glyphicon-circle-arrow-right"></span> 
                        </div>
                    </div>
                </div>
                <style>
                    .hvr-shutter-in-horizontal {
                        display: inline-block;
                        vertical-align: middle;
                        -webkit-transform: translateZ(0);
                        transform: translateZ(0);
                        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
                        -webkit-backface-visibility: hidden;
                        backface-visibility: hidden;
                        -moz-osx-font-smoothing: grayscale;
                        position: relative;
                        background: #e16b5b;
                        -webkit-transition-property: color;
                        transition-property: color;
                        -webkit-transition-duration: 0.3s;
                        transition-duration: 0.3s;
                    }
                </style>




            </div>

        
            </div>
    </div>
    </div>
          
                <div class="col-md-3 col-lg-0 col-lg-offset-0 advice-right w3-agile" style="margin-top: 11em; margin-left:2em;">


                                <div class="blo-top1 w3l">
                                    <div class="tech-btm">
                                        <h4 style="color: red;">Top stories of the week </h4>
                                        <div class="blog-grids">
                                            <div class="blog-grid-left">
                                                <a href="single.html">
                                                    <img src="images/f1.jpg" class="img-responsive" alt=""></a>
                                            </div>
                                            <div class="blog-grid-right">

                                                <h5><a href="single.html">Pellentesque dui, non felis. Maecenas male</a> </h5>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="blog-grids">
                                            <div class="blog-grid-left">
                                                <a href="single.html">
                                                    <img src="images/f2.jpg" class="img-responsive" alt=""></a>
                                            </div>
                                            <div class="blog-grid-right">

                                                <h5><a href="single.html">Pellentesque dui, non felis. Maecenas male</a> </h5>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="blog-grids">
                                            <div class="blog-grid-left">
                                                <a href="single.html">
                                                    <img src="images/f3.jpg" class="img-responsive" alt=""></a>
                                            </div>
                                            <div class="blog-grid-right">

                                                <h5><a href="single.html">Pellentesque dui, non felis. Maecenas male</a> </h5>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="blog-grids lost">
                                            <div class="blog-grid-left">
                                                <a href="single.html">
                                                    <img src="images/f4.jpg" class="img-responsive" alt=""></a>
                                            </div>
                                            <div class="blog-grid-right">

                                                <h5><a href="single.html">Pellentesque dui, non felis. Maecenas male</a> </h5>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>

                                
                                

                            </div>
           
        </div>
    </div>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:HiddenField ID="HiddenField5" runat="server" />
    <asp:HiddenField ID="HiddenField2" runat="server" />
    <asp:HiddenField ID="HiddenField_prize" runat="server" />
</asp:Content>

