<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Carengine.aspx.cs" Inherits="Admin_Carengine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
 <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Engine</h1>
                        <div class="form-group">
                            <label class="control-label">Select Car&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carnameeng" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_carnameeng_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                            <div class="form-group">
                            <label class="control-label">Fuel type&nbsp;&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_fueleng" CssClass="form-control" runat="server" placeholder="fuel type" TextMode="SingleLine" MaxLength="13" ReadOnly="false" OnTextChanged="txt_fueleng_TextChanged" Enabled="False" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                            
                        </div>
                            <div class="form-group">
                            <label class="control-label">Engine Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_carengname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_carengname" CssClass="form-control" runat="server" placeholder="Car Engine Nmae" TextMode="SingleLine" MaxLength="30" ReadOnly="false" OnTextChanged="txt_carengname_TextChanged" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                            <div class="form-group">
                            <label class="control-label">Engine Displacement&nbsp;&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_cc" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_cc" CssClass="form-control" runat="server" placeholder="Engine Displacement" TextMode="SingleLine" MaxLength="10" ReadOnly="false" OnTextChanged="txt_cc_TextChanged" > CC</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>

                      </div>
                            <div class="form-group">
                            <label class="control-label">Power&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_pwr" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_pwr" CssClass="form-control" runat="server" placeholder="Power" TextMode="SingleLine" MaxLength="10" ReadOnly="false" OnTextChanged="txt_pwr_TextChanged" > Bhp</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>

                      </div>
                            <div class="form-group">
                            <label class="control-label">Milege&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_milg" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_milg" CssClass="form-control" runat="server" placeholder="Milege" TextMode="SingleLine" MaxLength="10" ReadOnly="false" OnTextChanged="txt_milg_TextChanged" > Km/ltr</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>

                    </div>
                            <div class="form-group">
                            <label class="control-label">Topspeed&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_tpspd" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_tpspd" CssClass="form-control" runat="server" placeholder="Topspeed" TextMode="SingleLine" MaxLength="10" ReadOnly="false" OnTextChanged="txt_tpspd_TextChanged" > Km/hr</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                </div>
                            <div class="form-group">
                            <label class="control-label">Torque&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_trq" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_trq" CssClass="form-control" runat="server" placeholder="Torque" TextMode="SingleLine" MaxLength="10" ReadOnly="false" OnTextChanged="txt_trq_TextChanged" > Nm</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
            </div>
                            <div class="form-group">
                            <label class="control-label">Acceleration&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_accl" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_accl" CssClass="form-control" runat="server" placeholder="Acceleration" TextMode="SingleLine" MaxLength="10" ReadOnly="false" OnTextChanged="txt_accl_TextChanged" > Acl</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
         </div>
                            <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Number of Gears&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_nogear"  CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_nogear_SelectedIndexChanged">
                                <asp:ListItem>5 Speed</asp:ListItem>
                                <asp:ListItem>6 Speed</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                            <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Transmission Type&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_transmission"  CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_transmission_SelectedIndexChanged">
                                <asp:ListItem>Automatic</asp:ListItem>
                                <asp:ListItem>Manuvel</asp:ListItem>
                                <asp:ListItem>Auto With Manuvel Transmission</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                            <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Number of Cylinders&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_nocylinder"  CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_nocylinder_SelectedIndexChanged">
                                <asp:ListItem>3 Cylinder</asp:ListItem>
                                <asp:ListItem>4 Cylinder</asp:ListItem>
                                <asp:ListItem>6 cylinder</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                            <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                            <asp:GridView ID="grid_carengine" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_carengine_RowCommand" OnRowDeleting="grid_carengine_RowDeleting" OnRowEditing="grid_carengine_RowEditing" OnRowUpdating="grid_carengine_RowUpdating" OnSelectedIndexChanged="grid_carengine_SelectedIndexChanged"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cn_name" HeaderText="Car Name" />
                <%--<asp:BoundField DataField="cn_fuel" HeaderText="Fuel Type" />--%>
                <asp:BoundField DataField="cen_name" HeaderText="Engine Name" />
                <asp:BoundField DataField="cen_cc" HeaderText="Engine Displacement" />
                <asp:BoundField DataField="cen_pwr" HeaderText="Power" />
                <asp:BoundField DataField="cen_milg" HeaderText="Milage" />
                <asp:BoundField DataField="cen_tpspd" HeaderText="Top Speed" />
                <asp:BoundField DataField="cen_torq" HeaderText="Torque" />
                <asp:BoundField DataField="cen_accl" HeaderText="Acceleration" />
                
               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("cen_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("booking_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("cen_id") %>' CommandName="Delete"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("booking_id") %>' CommandName="Cancel"/>--%>
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
     </div>
</asp:Content>

