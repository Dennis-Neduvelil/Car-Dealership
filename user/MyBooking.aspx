<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="MyBooking.aspx.cs" Inherits="user_MyBooking" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        body {
       
        }
    </style>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       <section class="module bg-dark-60 shop-page-header" data-background="../car%20images/abanner.jpg">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2 class="module-title font-alt">My Bookings</h2>
                    <div class="module-subtitle font-serif">Maruthi suzuki way to life wherever you go, go wiyh all your heart.</div>
                </div>
            </div>
        </div>
    </section>
    <section class="module-small">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 mb-sm-20" style="margin-left:39em">
                    <div class="form-group" style="margin-top: 0em">
                        <asp:DropDownList ID="Drop_cartype" CssClass="form-control" runat="server" AutoPostBack="false">
                            <asp:ListItem>BOOKED</asp:ListItem>
                            <asp:ListItem>Cancelled</asp:ListItem>
                            <asp:ListItem>Delivered</asp:ListItem>
                           
                        </asp:DropDownList>
                    </div>
                </div>
                <%--<div class="col-sm-2 mb-sm-20">
                    <select class="form-control">
                        <option selected="selected">Woman</option>
                        <option>Man</option>
                    </select>
                </div>
                <div class="col-sm-3 mb-sm-20">
                    <select class="form-control">
                        <option selected="selected">All</option>
                        <option>Coats</option>
                        <option>Jackets</option>
                        <option>Dresses</option>
                        <option>Jumpsuits</option>
                        <option>Tops</option>
                        <option>Trousers</option>
                    </select>
                </div>--%>
               <div class="col-sm-3">
                   <asp:Button runat="server" Text="Apply" ID="btn" class="btn btn-block btn-round btn-b" OnClick="btn_Click"></asp:Button>
                </div>
            </div>
        </div>
    </section>
    <div class="container" style="min-height:27em">
      
    <table class="table table-hover">
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
         <th scope="col">Email ID</th>
         <th scope="col">Status</th>
         <th scope="col">Booked On</th>
        <th scope="col">Cancel Booking</th>
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
      <td><%#Eval("bd_email") %></td>
         <td> <asp:Label ID="Label1" runat="server" Text='<%#Eval("bd_status") %>'  ></asp:Label></td>
      <td><%#Convert.ToDateTime(Eval("bd_date")).ToString("dd-MMMM-yyyy") %></td>
     <td>
         <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CssClass="btn btn-danger" CommandArgument='<%#Eval("bd_id") %>' CommandName="cancel" /></td>
    </tr>
   </ItemTemplate>
          </asp:ListView>
  </tbody>
</table>
       </div>
</asp:Content>

