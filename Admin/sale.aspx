<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="sale.aspx.cs" Inherits="Admin_sale" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-1"></div>
            <div class="col-md-9" id="formContainer">
                <div role="form" style="margin: 0 auto;">
                    <h1 class="page-header">Sales Report </h1>
                    <div class="container" style="background-color: #ffffff9c; border-radius: 12px;">
                         <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-11" for="email">Booked Date From</label>
                            <div class="col-sm-12">

                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Mobile</asp:ListItem>
                                    <asp:ListItem>Accessory</asp:ListItem>
                                </asp:DropDownList>
                                </div>
                             </div>

                          <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-11" for="email">Booked Date From</label>
                            <div class="col-sm-12">

                                <asp:DropDownList ID="ddl_st" CssClass="form-control" runat="server" AutoPostBack="True">
                                   <asp:ListItem>Cancelled</asp:ListItem>
                                          <asp:ListItem>Booked</asp:ListItem>
                                    <asp:ListItem>Received</asp:ListItem>
                                </asp:DropDownList>
                                </div>
                             </div>
                        

                        <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-11" for="email">Booked Date From</label>
                            <div class="col-sm-12">

                                <asp:TextBox ID="txt_fromdate" runat="server" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy-MM-dd" TargetControlID="txt_fromdate"></ajaxToolkit:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_fromdate" ForeColor="Red" ValidationGroup="k"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Datw" ControlToValidate="txt_fromdate" ValidationExpression="^[0-9 -]+$" ValidationGroup="k"></asp:RegularExpressionValidator>


                            </div>
                        </div>

                        <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-10" for="email">Booked Date To</label>
                            <div class="col-sm-12">

                                <asp:TextBox ID="txt_todate" runat="server" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" Format="yyyy-MM-dd" TargetControlID="txt_todate"></ajaxToolkit:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_todate" ForeColor="Red" ValidationGroup="k"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Datw" ControlToValidate="txt_fromdate" ValidationExpression="^[0-9 -]+$" ValidationGroup="k"></asp:RegularExpressionValidator>


                            </div>
                        </div>
                        <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 45px;">
                            <asp:Button ID="Button2" runat="server" Text="View" class="btn btn-success" OnClick="Button2_Click" />
                        </div>
                        </div>

                        <asp:Button ID="Button1" runat="server" Text="Print" class="btn btn-success" OnClientClick="tablePrint()" />

                        <div id="sale">
                            <asp:GridView ID="grid_sale" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="810px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_sale_RowCommand" OnRowDeleting="grid_sale_RowDeleting" OnRowEditing="grid_sale_RowEditing">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>


                                    <asp:BoundField DataField="item_type" HeaderText="Item Type" />
                                    <asp:BoundField DataField="booked_date" HeaderText="Booking Date" />
                                    <asp:BoundField DataField="book_name" HeaderText="Customer Name" />
                                    <asp:BoundField DataField="book_address" HeaderText="Customer Address" />
                                    <asp:BoundField DataField="book_mob" HeaderText="Customer Mobile" />
                                    <asp:BoundField DataField="amount" HeaderText="Amount" />
                                    <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
                                    <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>


                                    <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                                    <%-- creating edit/delete links starts  --%>
                                    <%-- creating edit/delete links ends  --%>
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
                        <script language="javascript" type="text/javascript">
                            function tablePrint() {

                                var display_setting = "toolbar=yes,location=no,directories=yes,menubar=yes,";
                                display_setting += "scrollbars=yes,width=850, height=800, left=200, top=50";

                                var content_innerhtml = document.getElementById("sale").innerHTML;
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
                    </div>
                </div>
            </div>
                </div>

</asp:Content>