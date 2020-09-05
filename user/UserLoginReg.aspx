<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="UserLoginReg.aspx.cs" Inherits="user_UserLoginReg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="module bg-dark-30" data-background="../car%20images/loginwall2.jpg">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h1 class="module-title font-alt mb-0">Join Maruthi Suzuki group Now</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="module">
        <div class="container">
            <div class="row">
                <div class="col-sm-5 col-sm-offset-1 mb-sm-40">
                    <h4 class="font-alt">Login</h4>
                    <hr class="divider-w mb-10">

                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_username_login" ForeColor="Red" Display="Dynamic" ValidationGroup="save2"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_username_login" class="form-control" runat="server" placeholder="Username"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_password_login" ForeColor="Red" Display="Dynamic" ValidationGroup="save2"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_password_login" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" class="btn btn-round btn-b" Text="Login" ValidationGroup="save2" OnClick="Button1_Click" />

                    </div>
                       <div class="alert alert-danger" role="alert"  id="p_message" runat="server">
              <p></p>
          </div>
                    <div class="form-group"><a href="#" id="forgt" runat="server" onserverclick="forgt_ServerClick">Forgot Password?</a></div>

                </div>
                <div class="col-sm-5">
                    <h4 class="font-alt">Register</h4>
                    <hr class="divider-w mb-10">

                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_fname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="nameReg" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txt_fname" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" />
                        <asp:TextBox ID="txt_fname" class="form-control" runat="server" placeholder="Enter First Name"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_lname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txt_lname" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" />
                        <asp:TextBox ID="txt_lname" class="form-control" runat="server" placeholder="Enter Secound Name"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList_gender" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>

                        <asp:DropDownList ID="DropDownList_gender" runat="server" class="form-control">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_address" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_address" class="form-control" runat="server" TextMode="MultiLine" placeholder="Enter Address"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_landmark" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_landmark" class="form-control" runat="server" placeholder="Enter Landmark"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_pin" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="regPhone" runat="server" ValidationGroup="save" ForeColor="Red" ControlToValidate="txt_pin" ValidationExpression="[0-9]{6}" Text="Invalid Pin" />
                        <asp:TextBox ID="txt_pin" class="form-control" runat="server" placeholder="Enter Pin"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_dob" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_dob" class="form-control" runat="server" placeholder="Enter DOB"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txt_dob" Format="yyyy-MM-dd"></ajaxToolkit:CalendarExtender>
                        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_mob" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="save" ForeColor="Red" ControlToValidate="txt_mob"  ValidationExpression="[0-9]{10}" Text="Invalid Number" />
                        <asp:TextBox ID="txt_mob" class="form-control" runat="server" placeholder="Enter Mob"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_username" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter Valid Email ID" ValidationGroup="save" ControlToValidate="txt_username" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                        <asp:TextBox ID="txt_username" class="form-control" runat="server" placeholder="Enter Email"></asp:TextBox>

                    </div>

                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_password" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_password" class="form-control" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_reenter" ErrorMessage="Password Missmatch"></asp:CompareValidator>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_reenter" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_reenter" class="form-control" runat="server" placeholder="Re-Enter Password" TextMode="Password"></asp:TextBox>

                    </div>


                     <div class="alert alert-danger" role="alert"  id="DIV_EMAIL" runat="server">
              <p></p>
          </div>

                    <div class="form-group">
                        <asp:Button ID="Button2" runat="server" class="btn btn-block btn-round btn-b" Text="Register" ValidationGroup="save" OnClick="Button2_Click" />

                    </div>

                </div>
            </div>
        </div>
    </section>
    <div class="module-small bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="widget">
                        <h5 class="widget-title font-alt">REACH US</h5>
                        <p>3097 SALES OUTLETS.</p>
                        <p>3339 SERVICE WORKSHOPS</p>
                        1800 102 1800
                 
                            <p>Email:<a href="#">contact@maruti.co.in</a></p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="widget">
                        <h5 class="widget-title font-alt">MARUTI SUZUKI ARENA</h5>
                        <ul class="icon-list">
                            <li><a href="#">Nexa</a></li>
                            <li><a href="#">True Value</a></li>
                            <li><a href="#">Commercial</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="widget">
                        <h5 class="widget-title font-alt">MORE FROM US</h5>
                        <ul class="icon-list">
                            <li><a href="#">Maruti Driving School</a></li>
                            <li><a href="#">Maruti Finance</a></li>
                            <li><a href="#">Maruti Insurance</a></li>
                            <li><a href="#">Maruti AutoCard</a></li>
                            <li><a href="#">Maruti Genuine Accessories</a></li>
                            <li><a href="#">Maruti Genuine Parts</a></li>
                            <li><a href="#">Maruti Suzuki Leasing</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="widget">
                        <h5 class="widget-title font-alt">Popular Posts</h5>
                        <ul class="widget-posts">
                            <li class="clearfix">
                                <div class="widget-posts-image">
                                    <a href="#">
                                        <img src="assets/images/rp-1.jpg" alt="Post Thumbnail" /></a>
                                </div>
                                <div class="widget-posts-body">
                                    <div class="widget-posts-title"><a href="#">Designer Desk Essentials</a></div>
                                    <div class="widget-posts-meta">23 january</div>
                                </div>
                            </li>
                            <li class="clearfix">
                                <div class="widget-posts-image">
                                    <a href="#">
                                        <img src="assets/images/rp-2.jpg" alt="Post Thumbnail" /></a>
                                </div>
                                <div class="widget-posts-body">
                                    <div class="widget-posts-title"><a href="#">Realistic Business Card Mockup</a></div>
                                    <div class="widget-posts-meta">15 February</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr class="divider-d">
</asp:Content>

