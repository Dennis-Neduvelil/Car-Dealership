<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarManagePlace.aspx.cs" Inherits="Admin_CarManagePlace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Add State</h1>
                        <div class="form-group">
                            <label class="control-label">State Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_statename" ForeColor="Red" Display="Dynamic" ValidationGroup="save1"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="nameReg" runat="server" ErrorMessage="Invalid State" ControlToValidate="txt_statename" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_statename" CssClass="form-control" runat="server" placeholder="State Name" TextMode="SingleLine" MaxLength="30" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <div class="pull-right">
                                    <asp:Button ID="Btn_savestate" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save1" OnClick="Btn_savestate_Click"  />
                                
                                      </div>
                    <asp:GridView ID="grid_state" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_state_RowCommand" OnRowDeleting="grid_state_RowDeleting" OnRowEditing="grid_state_RowEditing" OnRowUpdating="grid_state_RowUpdating" OnSelectedIndexChanged="grid_state_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="st_id" HeaderText="State ID" />
                <asp:BoundField DataField="st_name" HeaderText="State Name" />

               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("st_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("st_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("st_id") %>' CommandName="Delete"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("st_id") %>' CommandName="Cancel"/>--%>
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
                        <h1 class="page-header">Add District</h1>
                         <label class="control-label">Select State&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_state1" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_state1_SelectedIndexChanged"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        <div class="form-group">
                            <label class="control-label">District Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_district" ForeColor="Red" Display="Dynamic" ValidationGroup="save2"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid District" ControlToValidate="txt_district" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_district" CssClass="form-control" runat="server" placeholder="District Name" TextMode="SingleLine" MaxLength="30" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                                    <asp:Button ID="Btn_savedistrict" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save2" OnClick="Btn_savedistrict_Click"  />
                                
                                      </div>
                    <asp:GridView ID="grid_district" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_district_RowCommand" OnRowDeleting="grid_district_RowDeleting" OnRowEditing="grid_district_RowEditing" OnRowUpdating="grid_district_RowUpdating" OnSelectedIndexChanged="grid_district_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="st_name" HeaderText="State Name" />
                <asp:BoundField DataField="dt_name" HeaderText="District Name" />
               
               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("dt_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("dt_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("dt_id") %>' CommandName="Delete"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("dt_id") %>' CommandName="Cancel"/>--%>
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
                        <h1 class="page-header">Add Place</h1>
                         <label class="control-label">State Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_state2" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_state2_SelectedIndexChanged" AutoPostBack="true" CausesValidation="false"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                         <label class="control-label">Select District&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_district" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_district_SelectedIndexChanged" CausesValidation="false" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        <div class="form-group">
                            <label class="control-label">Place Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_place" ForeColor="Red" Display="Dynamic" ValidationGroup="save3"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Place" ControlToValidate="txt_place" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_place" CssClass="form-control" runat="server" placeholder="Place Name" TextMode="SingleLine" MaxLength="30" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                                    <asp:Button ID="Btn_saveplace" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save3" OnClick="Btn_saveplace_Click"  />
                                
                                      </div>
                    <asp:GridView ID="grid_location" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_location_RowCommand" OnRowDeleting="grid_location_RowDeleting" OnRowEditing="grid_location_RowEditing" OnRowUpdating="grid_location_RowUpdating" OnSelectedIndexChanged="grid_location_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="st_name" HeaderText="State Name" />
                <asp:BoundField DataField="dt_name" HeaderText="District Name" />
                <asp:BoundField DataField="pl_location" HeaderText="Location Name" />
               
               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("pl_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("pl_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("pl_id") %>' CommandName="Delete"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("pl_id") %>' CommandName="Cancel"/>--%>
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
</asp:Content>

