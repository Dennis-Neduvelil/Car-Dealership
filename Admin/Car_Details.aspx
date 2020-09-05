<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Car_Details.aspx.cs" Inherits="Admin_Car_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Details</h1>
                        
                        <div class="form-group">
                            <label class="control-label">Select Car&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carname" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_carname_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                            <div class="form-group">
                            <label class="control-label">Fuel type&nbsp;&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_fueleng" CssClass="form-control" runat="server" placeholder="fuel type" TextMode="SingleLine" MaxLength="13" ReadOnly="false" Enabled="False" AutoPostBack="True" ></asp:TextBox>
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label">Car Detailed Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_cardetailname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_cardetailname" CssClass="form-control" runat="server" placeholder="car name  " TextMode="SingleLine" MaxLength="25" ReadOnly="false" OnTextChanged="txt_cardetailname_TextChanged" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Car Type&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_cartype"  CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_cartype_SelectedIndexChanged">
                        <asp:ListItem>Premium</asp:ListItem>
                        <asp:ListItem>Sedan</asp:ListItem>
                                <asp:ListItem>Hatchback</asp:ListItem>
                                <asp:ListItem>SUV</asp:ListItem>
                                <asp:ListItem>4X4</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                        <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Seat Capacity&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_seat"  CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_cartype_SelectedIndexChanged">
                        <asp:ListItem>4 Seater</asp:ListItem>
                        <asp:ListItem>5 Seater</asp:ListItem>
                                <asp:ListItem>7 Seater</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                         <div class="form-group">
                            <label class="control-label">Launch Year&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_launchyear" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ValidationGroup="save" ControlToValidate="txt_launchyear" ID="reg" ValidationExpression="^[0-9]{4}$" runat="server" ErrorMessage="Invalid year."  ForeColor="Red"></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_launchyear" CssClass="form-control" runat="server" placeholder="car name  " TextMode="Number" MaxLength="4" ReadOnly="false" OnDataBinding="txt_launchyear_DataBinding" OnTextChanged="txt_launchyear_TextChanged" >2018</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                             </div>
                              <div class="form-group">
                             <label class="control-label">Car Warrenty&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                             <asp:DropDownList ID="Drop_carwarrenty"  CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_carwarrenty_SelectedIndexChanged">
                        <asp:ListItem>1 Year/First 15000 kms</asp:ListItem>
                                 <asp:ListItem>2 Year/First 30000 kms</asp:ListItem>
                                 <asp:ListItem>3 Year/First 45000 kms</asp:ListItem>
                    </asp:DropDownList>
                                  </div>
                            <div class="form-group">
                            <label class="control-label">Car Description&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_cardesc" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_cardesc" CssClass="form-control" runat="server" placeholder="Car Description" TextMode="MultiLine" MaxLength="1000" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                         <div class="form-group">
                          <label class="control-label"> Car Image &nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_carimg1" runat="server" />
                        <asp:Button ID="btn_upload6" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_upload6_Click"/>
                        <asp:Image ID="img_car6" runat="server" Width="100px" />
                        </div>
                             
                             <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                             <div class="form-group">
                            <label class="control-label">&nbsp;&nbsp</label>
                                                        
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                        
                             <asp:GridView ID="grid_cardetail" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="grid_cardetail_SelectedIndexChanged" OnRowCancelingEdit="grid_cardetail_RowCancelingEdit" OnRowCommand="grid_cardetail_RowCommand" OnRowCreated="grid_cardetail_RowCreated" OnRowDataBound="grid_cardetail_RowDataBound" OnRowDeleted="grid_cardetail_RowDeleted" OnRowDeleting="grid_cardetail_RowDeleting" OnRowEditing="grid_cardetail_RowEditing" OnRowUpdated="grid_cardetail_RowUpdated" OnRowUpdating="grid_cardetail_RowUpdating" OnSelectedIndexChanging="grid_cardetail_SelectedIndexChanging"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cn_name" HeaderText="Car Name" />
                <asp:BoundField DataField="cd_name" HeaderText="Car Detail Name" />
                <asp:BoundField DataField="cd_type" HeaderText="Car Type" />
                <asp:BoundField DataField="cd_Year" HeaderText="Launch Year" />
                <asp:BoundField DataField="cd_warrenty" HeaderText="Car Warrenty" />
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="img_car1" runat="server" ImageUrl='<%#Eval("car_image") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>

               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("cd_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("booking_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("cd_id") %>' CommandName="Delete"/>
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

