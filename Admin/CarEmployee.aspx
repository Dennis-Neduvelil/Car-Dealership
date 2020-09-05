<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarEmployee.aspx.cs" Inherits="Admin_CarEmployee" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Employee Registration</h1>
                        <div class="form-group">
                            <label class="control-label">Username&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_usrnme" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_usrnme" CssClass="form-control" runat="server" placeholder="Username" TextMode="SingleLine" MaxLength="30" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Password&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_psswrd" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_psswrd" CssClass="form-control" runat="server" placeholder="Password" MaxLength="12" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Employee Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_empname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="nameReg" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txt_empname" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_empname" CssClass="form-control" runat="server" placeholder="Employee Name" TextMode="SingleLine" MaxLength="20" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Gender&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_gender"  CssClass="form-control" runat="server" AutoPostBack="True">
                         <asp:ListItem>Human</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%> 
                        </div>
                        <div class="form-group">
                            <label class="control-label">Address&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_empaddress" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_empaddress" CssClass="form-control" runat="server" placeholder="Employee Address" TextMode="MultiLine" MaxLength="150" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date of Birth&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_dob" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_dob" CssClass="form-control" runat="server" placeholder="Date of Birth" MaxLength="13" ReadOnly="false"></asp:TextBox>
                              <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txt_dob" Format="yyyy-MM-dd">
    </ajaxToolkit:CalendarExtender>
                                <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date of Join&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_join" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_join" CssClass="form-control" runat="server" placeholder="Contact Number" MaxLength="13" ReadOnly="false"></asp:TextBox>
                              <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" Enabled="True" TargetControlID="txt_join" Format="yyyy-MM-dd">
    </ajaxToolkit:CalendarExtender>
                                <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Contact Number&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_empnum" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator 
           ID="regPhone" 
           runat="server" 
                                 ForeColor="Red"
           ControlToValidate="txt_empnum" 
           ValidationExpression="[0-9]{10}"
                                 ValidationGroup="save"
           Text="Enter a valid phone number" />

                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_empnum" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="SingleLine" MaxLength="10" ReadOnly="false" OnTextChanged="txt_empnum_TextChanged" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Pincode&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_emppin" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator 
           ID="RegularExpressionValidator1" 
           runat="server" 
	ValidationGroup="save"
	ForeColor="Red"
           ControlToValidate="txt_emppin" 
           ValidationExpression="[0-9]{6}"
           Text="Enter a valid zip code" />
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_emppin" CssClass="form-control" runat="server" placeholder="ZIP Code" MaxLength="6" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Landmark&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_landmark" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txt_landmark" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_landmark" CssClass="form-control" runat="server" placeholder="Landmark" TextMode="SingleLine" MaxLength="30" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">E-mail&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_empmail" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="save" ControlToValidate="txt_empmail"
                  CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
                             <div class="required-field-block" >
                                 <asp:TextBox ID="txt_empmail" CssClass="form-control" runat="server" placeholder="Contact Mail ID" TextMode="SingleLine" MaxLength="99" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                   
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label">Other Details&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_othr" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_othr" CssClass="form-control" runat="server" placeholder="Others" TextMode="MultiLine" MaxLength="190" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                        <asp:GridView ID="grid_emp" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCancelingEdit="grid_emp_RowCancelingEdit" OnRowCommand="grid_emp_RowCommand" OnRowDeleting="grid_emp_RowDeleting" OnRowEditing="grid_emp_RowEditing" OnRowUpdating="grid_emp_RowUpdating" OnSelectedIndexChanged="grid_emp_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="e_name" HeaderText="Employee Name" />
                <asp:BoundField DataField="e_gender" HeaderText="Gender" />
                <asp:BoundField DataField="e_address" HeaderText="Address" />
                <asp:BoundField DataField="e_dob" HeaderText="Date of Birth" DataFormatString="{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="e_cntnum" HeaderText="Cnt Number" />
                <%--<asp:BoundField DataField="e_pincode" HeaderText="Pincode" />
                <asp:BoundField DataField="e_landmark" HeaderText="Landmark" />--%>
                <asp:BoundField DataField="e_email" HeaderText="E-mail" />

               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("e_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("e_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("e_id") %>' CommandName="Delete"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("e_id") %>' CommandName="Cancel"/>--%>
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

