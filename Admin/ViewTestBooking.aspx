<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewTestBooking.aspx.cs" Inherits="Admin_ViewBookingg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-12" id="formContainer" style="    width: 1380px">
                    <div class="form-group">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Test Drive Booking Details</h1>

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
    <div class="container" style="min-height:27em; width:1210px">
      
    <table class="table table-hover" style="width:95%">
  <thead style="    background-color: black;   color: white;">
    <tr>
                    <th scope="col">Sl.No</th>
                    <th scope="col">Car Name</th>
                    <th scope="col">Version Name</th>
                    <th scope="col">Colour</th>
                    <th scope="col">Dealer Name</th>
                   
                    <th scope="col">Booked By</th>
                 
                    <th scope="col">Status</th>
                    <th scope="col">Booked On</th>
                       <th scope="col">Test Date</th>
                       <th scope="col">Time From</th>
                       <th scope="col">Time To</th>
                    <th scope="col">Cancel Drive</th>
            <th scope="col">Completed</th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView id="ListView1" runat="server" onitemcommand="ListView1_ItemCommand" onitemediting="ListView1_ItemEditing" onitemdatabound="ListView1_ItemDataBound" onitemdeleting="ListView1_ItemDeleting">
          <ItemTemplate>
    <tr>
      <th scope="row"><%# Container.DataItemIndex + 1 %></th>
      <td><%#Eval("cn_dispname") %></td>
      <td><%#Eval("vr_name") %></td>
      <td><%#Eval("tst_fuel") %></td>
        <td><%#Eval("dl_name") %></td>
     
      <td><%#Eval("tst_email") %></td>
     
         <td> <asp:Label ID="Label1" runat="server" Text='<%#Eval("tst_status") %>'  ></asp:Label></td>
        <%--  <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("tst_status") %>'  ></asp:Label></td> 
          <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("tst_status") %>'  ></asp:Label></td> --%>
      <td><%#Convert.ToDateTime(Eval("tst_book_date")).ToString("dd-MMMM-yyyy") %></td>
          <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("tst_test_date") %>'></asp:Label></td>

          <%--<td><%#Convert.ToDateTime(Eval("tst_test_date")).ToString("dd-MMMM-yyyy") %></td> --%>

          <td><%#Eval("tst_time_from") %></td>
          <td><%#Eval("tst_time_to") %></td>
   
         <asp:Label ID="Label2" runat="server" Text='<%#Eval("tst_ver") %>'  style="display:none"></asp:Label>

      <td>   <asp:Button ID="btn_cancel" runat="server"   Text="Assign Date" CssClass="btn btn-danger" CommandArgument='<%#Eval("tst_id") %>' CommandName="cancel" /></td>
          <td>  <asp:Button ID="Button1" runat="server"   Text="Completd" CssClass="btn btn-danger" CommandArgument='<%#Eval("tst_id") %>' CommandName="compl" /></td>
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

