﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarBookingReport.aspx.cs" Inherits="Admin_CarBookingReport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-12" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Booking Report</h1>
                        <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-11" for="email">Select Dealer</label>
                            <div class="col-sm-12">

                                <asp:DropDownList ID="Drop_dealer" CssClass="form-control" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                                </div>
                             </div>
                        <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-11" for="email">Status</label>
                            <div class="col-sm-12">

                                <asp:DropDownList ID="Drop_status" CssClass="form-control" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Canceled</asp:ListItem>
                                    <asp:ListItem>Booked</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>

                                </asp:DropDownList>
                                </div>
                             </div>
                         <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-11" for="email">Date From</label>
                            <div class="col-sm-12">

                                <asp:TextBox ID="txt_fromdate" runat="server" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy-MM-dd" TargetControlID="txt_fromdate"></ajaxToolkit:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_fromdate" ForeColor="Red" ValidationGroup="k"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Datw" ControlToValidate="txt_fromdate" ValidationExpression="^[0-9 -]+$" ValidationGroup="k"></asp:RegularExpressionValidator>


                            </div>
                        </div>

                        <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-10" for="email">Date To</label>
                            <div class="col-sm-12">

                                <asp:TextBox ID="txt_todate" runat="server" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" Format="yyyy-MM-dd" TargetControlID="txt_todate"></ajaxToolkit:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_todate" ForeColor="Red" ValidationGroup="k"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Datw" ControlToValidate="txt_fromdate" ValidationExpression="^[0-9 -]+$" ValidationGroup="k"></asp:RegularExpressionValidator>


                            </div>
                        </div>
                        <div class="form-group col-md-3" style="padding: 0px 0px; margin-top: 45px;">
                            <asp:Button ID="Button2" runat="server" Text="View" class="btn btn-success" OnClick="Button2_Click" />
                        </div>
                        <div class="form-group col-md-1" style="padding: 0px 0px; margin-top: 45px;">
                        <asp:Button ID="Button1" runat="server" Text="Print" class="btn btn-success" OnClientClick="tablePrint()"/>
                        </div>
                        <asp:GridView ID="grid_accreg" runat="server" CssClass="table-condensed" OnRowDataBound="grid_accreg_RowDataBound" OnRowCommand="grid_accreg_RowCommand" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1100px" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="bd_fname" HeaderText="Name" />
                <asp:BoundField DataField="bd_lname" />
                <asp:BoundField DataField="bd_car" HeaderText="Car" />
                <asp:BoundField DataField="bd_ver" HeaderText="Version" />
                <asp:BoundField DataField="bd_clr" HeaderText="Colour" />
                <asp:BoundField DataField="bd_email" HeaderText="E-mail" />
                <asp:BoundField DataField="dl_name" HeaderText="Dealer" />
          
     <asp:TemplateField HeaderText="Devlivary" FooterText="Status">

                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("bd_status") %>'></asp:Label>
                                                </ItemTemplate>
                     </asp:TemplateField>

            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
         </div>
    <script language="javascript" type="text/javascript">
        function tablePrint() {

            var display_setting = "toolbar=yes,location=no,directories=yes,menubar=yes,";
            display_setting += "scrollbars=yes,width=850, height=800, left=200, top=50";

            var content_innerhtml = document.getElementById("formContainer").innerHTML;
            var document_print = window.open("", "", display_setting);
            document_print.document.open();

            document_print.document.write('<html><head><title></title><style type="text/css">');
            document_print.document.write('.reportTitle{    font-size:larger;    text-transform:uppercase;    font-weight:bold;    padding-left:20px;}');
            document_print.document.write('.reportMainHeading{    font-size:26px;    text-transform:uppercase;    font-weight:bold;    padding-bottom:5px;    padding-right:10px;    padding-left:0px;}');
            document_print.document.write('.reportSubHeading{    font-size:14px;    font-weight:bold;    padding-right:25px;    padding-left:5px;}');
            document_print.document.write('</style></head>');

            document_print.document.write('<body onLoad="self.print();self.close();">');
            document_print.document.write(content_innerhtml);
            document_print.document.write('</body></html>');
            document_print.print();
            document_print.document.close();
            return false;
        }
        </script>
</asp:Content>

