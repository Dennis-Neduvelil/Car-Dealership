<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="SalesReport.aspx.cs" Inherits="Admin_SalesReport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-0"></div>
                <div class="col-md-12" id="formContainer" style="width: 1180px; margin-left:21em">
                    <div class="form-group">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Sales Report</h1>
                        <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-11" for="email"> Date From</label>
                            <div class="col-sm-12">

                                <asp:TextBox ID="txt_fromdate" runat="server" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy-MM-dd" TargetControlID="txt_fromdate"></ajaxToolkit:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_fromdate" ForeColor="Red" ValidationGroup="k"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Datw" ControlToValidate="txt_fromdate" ValidationExpression="^[0-9 -]+$" ValidationGroup="k"></asp:RegularExpressionValidator>


                            </div>
                        </div>

                        <div class="form-group col-md-2" style="padding: 0px 0px; margin-top: 25px;">
                            <label class="control-label col-sm-10" for="email"> Date To</label>
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
                        <div class="form-group col-sm-3" style="padding: 0px 0px; margin-top: 45px">
                        <asp:Button ID="Button1" runat="server" Text="Print" class="btn btn-successs" OnClientClick="tablePrint()"/>
                        </div>
                        </div>
    <div class="container" style="min-height:27em; width:1180px">
      
    <table class="table table-hover" style="width:95%">
  <thead style="    background-color: black;   color: white;">
    <tr>
      <th scope="col">Sl.No</th>
      <th scope="col">Car Name</th>
      <th scope="col">Version Name</th>
      <th scope="col">Colour</th>
         <th scope="col">Dealer Name</th>
         <th scope="col">City</th>
         <th scope="col">District</th>
         <th scope="col">State</th>
         <th scope="col">Booked By</th>
   
         <th scope="col">Status</th>
         <th scope="col">Booked On</th>
    </tr>
  </thead>
  <tbody>
      <asp:ListView ID="ListView1" runat="server">
          <ItemTemplate>
    <tr>
      <th scope="row"><%# Container.DataItemIndex + 1 %></th>
      <td><%#Eval("bd_car") %></td>
      <td><%#Eval("bd_ver") %></td>
      <td><%#Eval("bd_clr") %></td>
        <td><%#Eval("dl_name") %></td>
      <td><%#Eval("pl_location") %></td>
      <td><%#Eval("dt_name") %></td>
        <td><%#Eval("st_name") %></td>
      <td><%#Eval("bd_email") %></td>
    
        <td> <asp:Label ID="Label1" runat="server" Text="Delivered"  ></asp:Label></td>
      <td><%#Convert.ToDateTime(Eval("bd_date")).ToString("dd-MMMM-yyyy") %></td>
    </tr>
   </ItemTemplate>
          </asp:ListView>
  </tbody>
</table>
       </div>
                        </div>
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

