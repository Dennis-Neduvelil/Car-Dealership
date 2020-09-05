<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="MyTestDriveBooking.aspx.cs" Inherits="user_MyTestDriveBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="module bg-dark-60 shop-page-header" data-background="../car%20images/Robin-Brown-at-wheel-of-Suzuki-Celerio.jpg"">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2 class="module-title font-alt">My Drives</h2>
                    <div class="module-subtitle font-serif">Maruthi suzuki way to life wherever you go, go wiyh all your heart.</div>
                </div>
            </div>
        </div>
    </section>
    <section class="module-small">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 mb-sm-20" style="margin-left: 39em">
                    <div class="form-group" style="margin-top: 0em">
                        <asp:dropdownlist id="Drop_cartype" cssclass="form-control" runat="server" autopostback="false">
                            <asp:ListItem>Booked and confirmed</asp:ListItem>
                            <asp:ListItem>Cancelled</asp:ListItem>
                            <asp:ListItem>Completed</asp:ListItem>
                           
                        </asp:dropdownlist>
                   
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
                    <asp:button runat="server" text="Apply" id="btn" class="btn btn-block btn-round btn-b" onclick="btn_Click"></asp:button>
                </div>
            </div>
        </div>
    </section>
    <div class="container" style="min-height: 27em">

        <table class="table table-hover">
            <thead style="background-color: black; color: white;">
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
                       <th scope="col">Test Date</th>
                       <th scope="col">Time From</th>
                       <th scope="col">Time To</th>
                    <th scope="col">Cancel Drive</th>
                </tr>
            </thead>
            <tbody>
                <asp:listview id="ListView1" runat="server" onitemcommand="ListView1_ItemCommand" onitemediting="ListView1_ItemEditing" onitemdatabound="ListView1_ItemDataBound" onitemdeleting="ListView1_ItemDeleting">
          <ItemTemplate>
    <tr>
      <th scope="row"><%# Container.DataItemIndex + 1 %></th>
      <td><%#Eval("cn_dispname") %></td>
      <td><%#Eval("vr_name") %></td>
      <td><%#Eval("tst_fuel") %></td>
        <td><%#Eval("dl_name") %></td>
      <td><%#Eval("pl_location") %></td>
      <td><%#Eval("dt_name") %></td>
        <td><%#Eval("st_name") %></td>
      <td><%#Eval("tst_email") %></td>
      <td><%#Eval("tst_email") %></td> 
         <td> <asp:Label ID="Label1" runat="server" Text='<%#Eval("tst_status") %>'  ></asp:Label></td>
        <%--  <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("tst_status") %>'  ></asp:Label></td> 
          <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("tst_status") %>'  ></asp:Label></td> --%>
   
        <td><%#Convert.ToDateTime(Eval("tst_book_date")).ToString("dd-MMMM-yyyy") %></td>
            <td> <asp:Label ID="Label3" runat="server" Text='<%#Eval("tst_test_date") %>'></asp:Label></td>
          <td><%#Eval("tst_time_from") %></td>
          <td><%#Eval("tst_time_to") %></td>
     <td>

         <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CssClass="btn btn-danger" CommandArgument='<%#Eval("tst_id") %>' CommandName="cancel" /></td>
    </tr>
   </ItemTemplate>
          </asp:listview>
            </tbody>
        </table>
    </div>
    <h6 style="color:red;font:italic; font-size:medium; text-align:right; margin-right:30px;" >(NB.Times are shown in 24 hour format 00-24)</h6>
</asp:Content>

