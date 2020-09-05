<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="frm_DeptMeeting.aspx.cs" Inherits="StaffPortal_frm_DeptMeeting" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        
                        <div class="form-group">
                            <label class="control-label">Department&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_Dept" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_Dept" CssClass="form-control" runat="server" placeholder="Department  " TextMode="SingleLine" MaxLength="13" ReadOnly="True" OnTextChanged="txt_Dept_TextChanged" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Meeting Date  &nbsp<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_date" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <div class="required-field-block">
                            <asp:TextBox ID="txt_date" CssClass="form-control" runat="server" placeholder="Department Meeting date" ></asp:TextBox>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:CalendarExtender ID="txt_date_CalendarExtender" runat="server" Enabled="True" Format="dd-MM-yyyy" TargetControlID="txt_date">
                                </asp:CalendarExtender>
                            <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                        </div>
                        <br />
                        

                        <div class="form-group">
                            <label class="control-label">Place&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_place" ForeColor="Red" ValidationGroup="save" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Only lettes & spaces allowed here!" ControlToValidate="txt_place" ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="save"></asp:RegularExpressionValidator>
                           
                            <div class="required-field-block">
                                <asp:TextBox ID="txt_place" CssClass="form-control" runat="server" placeholder="Place of Department Meeting " MaxLength="30"></asp:TextBox>
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>

                             <div class="form-group">
                            <label class="control-label">Staff Incharge&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_StaffIncharge" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_StaffIncharge" CssClass="form-control" runat="server" placeholder="staff name  " TextMode="SingleLine" MaxLength="20" EnableViewState="False" ReadOnly="True" ></asp:TextBox>
                                 
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Staff secretary  &nbsp<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RadioButtonList ID="Radiobtn_rhstatus" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" AutoPostBack="True"  >
                                    <asp:ListItem Text="Yes" Value="Yes" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                </asp:RadioButtonList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> <div class="required-field-block">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Name "></asp:TextBox>
                               <%-- <div class="required-icon">
                                    <div class="text">*</div>
                                </div>--%>
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" SetFocusOnError="True" runat="server" ErrorMessage="Required" ValidationGroup="save" ControlToValidate="Drop_Staff"  ForeColor="Red" Display="Dynamic" InitialValue="--Select--" ></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:DropDownList ID="Drop_Staff" CssClass="form-control" runat="server" AutoPostBack="True"   >
                                     <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    
                                </asp:DropDownList>
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Guest&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Only lettes & spaces allowed here!" ControlToValidate="txt_guest" ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="save"></asp:RegularExpressionValidator>
                             
                            <asp:TextBox ID="txt_guest" CssClass="form-control" runat="server" placeholder="Guest" MaxLength="20"></asp:TextBox>
                            </div>
                      
                        
                        <div class="form-group">
                            <label class="control-label">Description&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Only lettes & spaces allowed here!" ControlToValidate="txt_MeetingDescription" ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="save"></asp:RegularExpressionValidator>
                            
                             <asp:TextBox ID="txt_MeetingDescription" CssClass="form-control" runat="server" placeholder="Description" TextMode="MultiLine" MaxLength="100"></asp:TextBox>

                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="pull-right">
                                    <asp:Button ID="Btn_clear" runat="server" Text="Cancel" CssClass="btn btn-warning"   />
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                            </div>
                        </div>

                        
                       </div>
                    </div>
                        <h1 class="page-header">Department meting6666</h1>
                        
                    </div>
                </div>
            </div>
    <br />
    <div class="col-lg-offset-3 col-md-offset-2 col-sm-offset-2  table-responsive" style="margin-left:300px">
        <asp:GridView ID="gv_DeptMeeting" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" DataKeyNames="Meeting_Id"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Meeting_Date" HeaderText="Meeting Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Meeting_Time" HeaderText="Time" />
                <asp:BoundField DataField="Meeting_Place" HeaderText="Place" />
                <asp:BoundField DataField="hod" HeaderText="Staff incharge" />
               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update"  CommandArgument='<%#Eval("Meeting_Id") %>' CommandName="Update" ToolTip="Update" BackColor="#99ccff" ForeColor="White"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("booking_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Button ID="btnRemove" runat="server" Text="Remove"  CommandArgument='<%#Eval("Meeting_Id") %>' CommandName="Remove" ToolTip="Remove" BackColor="#99ccff" ForeColor="White"/>
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
    <asp:HiddenField ID="HiddenField1" runat="server" />


    
</asp:Content>

