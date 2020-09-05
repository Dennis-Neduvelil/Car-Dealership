<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewBooking.aspx.cs" Inherits="Admin_ViewBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-0"></div>
                <div class="col-md-12" id="formContainer" style="    width: 1300px">
                    <div class="form-group">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Booking Details</h1>

    <section class="module-small">
        <div class="container">
            <div class="row">
                <div class="col-sm-4" style="margin-left:0em">
                    <div class="form-group" style="margin-top: 0em">
                        <asp:DropDownList ID="Drop_cartype" CssClass="form-control" runat="server" AutoPostBack="false">
                            <asp:ListItem>Booked</asp:ListItem>
                            <asp:ListItem>Cancelled</asp:ListItem>
                            <asp:ListItem>Completed</asp:ListItem>
                           
                        </asp:DropDownList>
                    </div>
                </div>
                
               <div class="col-sm-3">
                   <asp:Button runat="server" Text="Apply" ID="btn" class="btn btn-block btn-round btn-b" OnClick="btn_Click"></asp:Button>
                </div>
            </div>
        </div>
    </section>
                        <div class="form-group col-sm-3" style="margin-bottom: 30px; float:right ">
                        <asp:Button ID="Button1" runat="server" Text="Print" class="btn btn-block btn-round btn-b" OnClientClick="tablePrint()"/>
                        </div>
    <div class="container" style="min-height:27em; width:1300px">
      
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
        <th scope="col">Manage Booking</th>
    </tr>
  </thead>
  <tbody>
      <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" OnItemEditing="ListView1_ItemEditing" OnItemDataBound="ListView1_ItemDataBound" OnItemDeleting="ListView1_ItemDeleting">
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
    
        <td> <asp:Label ID="Label1" runat="server" Text='<%#Eval("bd_status") %>'  ></asp:Label></td>
      <td><%#Convert.ToDateTime(Eval("bd_date")).ToString("dd-MMMM-yyyy") %></td>
     <td>
       
         <asp:Button ID="btn_cancel" runat="server" Text="Manage" CssClass="btn btn-danger" CommandArgument='<%#Eval("bd_id") %>' CommandName="cancel" /></td>
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

