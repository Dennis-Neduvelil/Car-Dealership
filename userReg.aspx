<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userReg.aspx.cs" Inherits="userReg" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Registration :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="admin/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admin/css/style.css" rel='stylesheet' type='text/css' />
<link href="admin/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='http://localhost:1580/fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="admin/css/font.css" type="text/css"/>
<link href="admin/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="reg-w3">
<div class="w3layouts-main">
	<h2>Register Now</h2>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
           <!-- // codes for filling the forms-->
             <!-- // codes for textboxs-->
            <asp:TextBox ID="txt_user_name" runat="server" CssClass="ggg" placeholder="Customer Name"></asp:TextBox>
             <!-- // codes for RadioButtonList -->
            <asp:RadioButtonList ID="radio1" runat="server" AutoPostBack="True">
              
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
             </asp:RadioButtonList>

             <!-- // codes for dob-->
             &nbsp;<asp:TextBox ID="txt_dob" runat="server" CssClass="ggg" placeholder="Date Of Birth"></asp:TextBox>
    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy-MM-dd" TargetControlID="txt_dob"></ajaxToolkit:CalendarExtender> 
            


             <!-- // codes for textboxs-->
              <asp:TextBox ID="txt_housename" runat="server" CssClass="ggg" placeholder="House Name"></asp:TextBox>
             <asp:TextBox ID="txt_place" runat="server" CssClass="ggg" placeholder="Place"></asp:TextBox>
               <asp:TextBox ID="txt_district" runat="server" CssClass="ggg" placeholder="District"></asp:TextBox>
               <asp:TextBox ID="txt_phoneno" runat="server" CssClass="ggg" placeholder="Phone Number"></asp:TextBox>
               <asp:TextBox ID="txt_emailid" runat="server" CssClass="ggg" placeholder="Email Id"></asp:TextBox>
               <asp:TextBox ID="txt_adarno" runat="server" CssClass="ggg" placeholder="Adar Number"></asp:TextBox>
                 <asp:TextBox ID="txt_username" runat="server" CssClass="ggg" placeholder="User Name"></asp:TextBox>
              <asp:TextBox ID="txt_password" runat="server" CssClass="ggg" placeholder="Password"  TextMode="Password"></asp:TextBox>
    
             <!-- // codes for submit button-->
            <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-warning" OnClick="btn_submit_Click" />
         
			<h4><input type="checkbox" /><!--//I agree to the Terms of Service and Privacy Policy class="clearfix">ype="submit" value="submit" name="register">
		y Registered.<a href="login.html">Login</a></p></h4>-->
</div>
</div>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
    </div>
    </form>
</body>
</html>
