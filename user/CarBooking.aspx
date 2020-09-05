<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="CarBooking.aspx.cs" Inherits="user_CarBooking" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <section class="module bg-dark-60 about-page-header" data-background="assets/images/about_bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2 class="module-title font-alt">Your Car Is Here</h2>
                    <div class="module-subtitle font-serif">Maruthi suzuki way to life wherever you go, go wiyh all your heart.</div>
                </div>
            </div>
        </div>
    </section>
    <section class="module">
        <div class="container">
            <div class="row">
                <div class="col-sm-5 col-sm-offset-1 mb-sm-40">
                    <h4 class="font-alt">Enter Details</h4>
                    <hr class="divider-w mb-10">

                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_fname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="nameReg" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txt_fname" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt_fname" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_lname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txt_lname" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt_lname" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>

                    </div>
                  
                        <div class="form-group">
                            <asp:TextBox ID="txt_cname" class="form-control" ReadOnly="true" Style="background-color: white" runat="server" placeholder="Car Name"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txt_cver" class="form-control" ReadOnly="true" Style="background-color: white" runat="server" placeholder="Version"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txt_cclr" class="form-control" runat="server" ReadOnly="true" Style="background-color: white" placeholder="Colour"></asp:TextBox>

                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList_state" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="DropDownList_state" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_state_SelectedIndexChanged1">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList_dist" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="DropDownList_dist" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_dist_SelectedIndexChanged1">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList_city" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="DropDownList_city" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_city_SelectedIndexChanged1">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList_dealer" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="DropDownList_dealer" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_dealer_SelectedIndexChanged1">
                                    </asp:DropDownList>
                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-sm-5">
                        <h4 class="font-alt">&nbsp;</h4>
                        <hr class="divider-w mb-10">
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_building" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_building" class="form-control" runat="server" placeholder="Flat No,Building Nname*"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_locality" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_locality" class="form-control" runat="server" placeholder="Locality,Area or Street"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_pin" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationGroup="save" ForeColor="Red" ControlToValidate="txt_pin" ValidationExpression="[0-9]{6}" Text="Invalid Pin" />
                            <asp:TextBox ID="txt_pin" class="form-control" runat="server" placeholder="Zipcode"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_landmark" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_landmark" class="form-control" runat="server" placeholder="Landmark"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_mobile" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="save" ForeColor="Red" ControlToValidate="txt_mobile" ValidationExpression="[0-9]{10}" Text="Invalid Number" />
                            <asp:TextBox ID="txt_mobile" class="form-control" runat="server" placeholder="Mobile Number"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:RegularExpressionValidator ID="regPhone" runat="server" ValidationGroup="save" ForeColor="Red" ControlToValidate="txt_amobile" ValidationExpression="[0-9]{10}" Text="Invalid Number" />
                            <asp:TextBox ID="txt_amobile" class="form-control" runat="server" placeholder="Alternative Mobile Number"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_email" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please Enter Valid Email ID" ValidationGroup="save" ControlToValidate="txt_email" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                            <asp:TextBox ID="txt_email" class="form-control" runat="server" placeholder="Email"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please Enter Valid Email ID" ValidationGroup="save" ControlToValidate="txt_aemail" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                            <asp:TextBox ID="txt_aemail" class="form-control" runat="server" placeholder="Alternative Email"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <asp:Button ID="deliver" runat="server" class="btn btn-round btn-b" Text="Deliver Here" ValidationGroup="save" OnClick="deliver_Click" />

                        </div>
                    </div>
                </div>
            </div>
    </section>
</asp:Content>

