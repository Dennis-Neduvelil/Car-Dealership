<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarRegReport.aspx.cs" Inherits="Admin_CarRegReport" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-11" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Registration Report</h1>
                        
                        <asp:Button ID="Button1" runat="server" Text="Print" class="btn btn-success" OnClientClick="tablePrint()" style="margin-bottom: 10px; float:right "/>
                        
                        <asp:GridView ID="grid_carregreport" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1010px" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>

                
                <asp:BoundField DataField="cn_name" HeaderText="Car Name" />
                <asp:BoundField DataField="cn_dispname" HeaderText="Car Dispaly Name" />
                <asp:BoundField DataField="cn_fuel" HeaderText="Fuel Type" />
                <asp:BoundField DataField="cd_name" HeaderText="Car Detail Name" />
                <asp:BoundField DataField="cd_type" HeaderText="Car Type" />
                <asp:BoundField DataField="cd_Year" HeaderText="Launch Year" />
                <asp:BoundField DataField="cd_warrenty" HeaderText="Car Warrenty" />
              
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

