<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Login :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admin/css/style.css" rel='stylesheet' type='text/css' />
<link href="admin/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='/../fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admin/css/font.css" type="text/css"/>
<link href="admin/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="admin/js/jquery2.0.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="log-w3">
<div class="w3layouts-main">
	<h2>Sign In Now</h2>
		<div>
            <style>
                tbody > tr {
                    width:50%;
                    float:left;
                            padding: 1px 60px;
                }
                .radio label, .checkbox label {
                font-size:20px;
                }
            </style>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio">
        <asp:ListItem>Dealer</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
    </asp:RadioButtonList>
            </div>
            <asp:TextBox ID="txt_name" CssClass="ggg" runat="server" placeholder="username" TextMode="SingleLine" MaxLength="30"  ></asp:TextBox>

		 <asp:TextBox ID="txt_password" CssClass="ggg" runat="server" placeholder="Password" TextMode="Password" MaxLength="16"  ></asp:TextBox>

			
			<h6><a href="#"></a></h6>
				<div class="clearfix"></div>
			     <asp:Button ID="btn_signin" runat="server" Text="Signin" CssClass="btn btn-warning" OnClick="btn_signin_Click"   />

	
		<p> <a href="registration.html"></a></p>
</div>
</div>
        <script src="admin/js/bootstrap.js"></script>
<script src="admin/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="admin/js/scripts.js"></script>
<script src="admin/js/jquery.slimscroll.js"></script>
<script src="admin/js/jquery.nicescroll.js"></script>
    </div>
    </form>
</body>
</html>
