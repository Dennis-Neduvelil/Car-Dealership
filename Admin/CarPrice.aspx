<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarPrice.aspx.cs" Inherits="Admin_CarPrice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Price</h1>
                         <label class="control-label">Select Car&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carnamep" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_carnamep_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        <div class="form-group">
                         <label class="control-label">Select Version&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carversionp" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_carversionp_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Price&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_carprice" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             

                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_carprice" CssClass="form-control" runat="server" placeholder="Car Price" TextMode="Number" MaxLength="10" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Booking Amount&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_carbkamt" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>

                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_carbkamt" CssClass="form-control" runat="server" placeholder="Booking Amount" TextMode="Number" MaxLength="10" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Tax+RTO(Include all*)&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_cartax" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>

                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_cartax" CssClass="form-control" runat="server" placeholder="Car Tax" TextMode="Number" MaxLength="10" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Insurance&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_carinsurance" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_carinsurance" CssClass="form-control" runat="server" placeholder="Insurance Amount" TextMode="Number" MaxLength="10" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Other Amounts(If Any*)&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_carothramt" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_carothramt" CssClass="form-control" runat="server" placeholder="Other Amounts" TextMode="Number" MaxLength="10" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Total&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_cartotal" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_cartotal" CssClass="form-control" runat="server" placeholder="Total Amount" TextMode="Number" MaxLength="10" ReadOnly="false" OnTextChanged="txt_cartotal_TextChanged" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">On-Road(Approx*)&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_caronroad" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_caronroad" CssClass="form-control" runat="server" placeholder="On-Road Amount" TextMode="Number" MaxLength="10" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Description&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_carpricedesc" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_carpricedesc" CssClass="form-control" runat="server" placeholder="Description" TextMode="MultiLine" MaxLength="190" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                        <asp:GridView ID="grid_carprice" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_carprice_RowCommand" OnRowDeleting="grid_carprice_RowDeleting" OnRowEditing="grid_carprice_RowEditing" OnRowUpdating="grid_carprice_RowUpdating" OnSelectedIndexChanged="grid_carprice_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cn_name" HeaderText="Car" />
                <asp:BoundField DataField="vr_name" HeaderText="Version" />
                <asp:BoundField DataField="cp_price" HeaderText="Price" />
                <asp:BoundField DataField="cp_bookingamt" HeaderText="Booking Amount" />
                <asp:BoundField DataField="cp_tax" HeaderText="Tax Amount" />
                <asp:BoundField DataField="cp_insurance" HeaderText="Insurance Amount" />
                <asp:BoundField DataField="cp_total" HeaderText="Total" />
                <asp:BoundField DataField="cp_onroad" HeaderText="On-Road" />

               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("cp_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("cp_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("cp_id") %>' CommandName="Delete"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("cp_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
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
                </div>
            </div>
         </div>
    </div>
</asp:Content>

