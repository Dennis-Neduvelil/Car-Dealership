<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarAccessories.aspx.cs" Inherits="Admin_CarAccessories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Accessories</h1>
                         <label class="control-label">Select Car&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carnameacc" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_carnameacc_SelectedIndexChanged"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        <div class="form-group">
                            <label class="control-label">Accessory Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_accname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_accname" CssClass="form-control" runat="server" placeholder="Accessory Name" TextMode="SingleLine" MaxLength="40" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Accessory Brand&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_accbrand" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="nameReg" runat="server" ErrorMessage="Please enter valid brand name" ControlToValidate="txt_accbrand" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_accbrand" CssClass="form-control" runat="server" placeholder="Accessory Brand" TextMode="SingleLine" MaxLength="40" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Accessory Type&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_acctype" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_acctype" CssClass="form-control" runat="server" placeholder="Accessory Type" TextMode="SingleLine" MaxLength="40" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Estimatted Price&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_accprice" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <%--<asp:RegularExpressionValidator 
           ID="regPhone" 
           runat="server" 
	ValidationGroup="save"
	ForeColor="Red"
           ControlToValidate="txt_accprice" 
           ValidationExpression="[0-9]"
           Text="Enter a valid amount" />
                            <div class="required-field-block" >--%>
                                 <asp:TextBox ID="txt_accprice" CssClass="form-control" runat="server" placeholder="Estimatted Price" TextMode="Number" MaxLength="10" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text"></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Buy Link&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_acclink" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_acclink" CssClass="form-control" runat="server" placeholder="Buy Link" MaxLength="490" ReadOnly="false" ValidationGroup="save" >https://</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Warrenty&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_warrenty"  CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_warrenty_SelectedIndexChanged">
                        <asp:ListItem>No Warrenty</asp:ListItem>
                                <asp:ListItem>1 YearManufacture Warrenty</asp:ListItem>
                                <asp:ListItem>2 Year Manufacture Warrenty</asp:ListItem>
                                <asp:ListItem>6 Months Manufacture Warrenty</asp:ListItem>
                                <asp:ListItem>1 Year Limitted Warrenty</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                        <div class="form-group">
                          <label class="control-label"> Accessory Image 1&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_acc1" runat="server" />
                        <asp:Button ID="btn_uploadacc1" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_uploadacc1_Click"/>
                        <asp:Image ID="img_acc1" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                          <label class="control-label"> Accessory Image 2&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_acc2" runat="server" />
                        <asp:Button ID="btn_uploadacc2" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_uploadacc2_Click"/>
                        <asp:Image ID="img_acc2" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                          <label class="control-label"> Accessory Image 3&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_acc3" runat="server" />
                        <asp:Button ID="btn_uploadacc3" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_uploadacc3_Click"/>
                        <asp:Image ID="img_acc3" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Other Description&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_accdesc" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_accdesc" CssClass="form-control" runat="server" placeholder="Accessory Description" TextMode="MultiLine" MaxLength="450" ReadOnly="false" OnTextChanged="txt_accdesc_TextChanged" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                        <asp:GridView ID="grid_acc" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_acc_RowCommand" OnRowDeleting="grid_acc_RowDeleting" OnRowEditing="grid_acc_RowEditing" OnRowUpdating="grid_acc_RowUpdating" OnSelectedIndexChanged="grid_acc_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ac_name" HeaderText="Accessory Name" />
                <asp:BoundField DataField="ac_brand" HeaderText="Brand" />
                <asp:BoundField DataField="ac_type" HeaderText="Type" />
                <asp:BoundField DataField="ac_price" HeaderText="Price" />
                <asp:BoundField DataField="ac_warrenty" HeaderText="Warrenty" />

                <asp:TemplateField HeaderText="Image 1">
                <ItemTemplate>
                    <asp:Image ID="img_acc1" runat="server" ImageUrl='<%#Eval("ac_img1") %>' Width="63px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                 <asp:TemplateField HeaderText="Image 2">
                <ItemTemplate>
                    <asp:Image ID="img_acc2" runat="server" ImageUrl='<%#Eval("ac_img2") %>' Width="63px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                 <asp:TemplateField HeaderText="Image 3">
                <ItemTemplate>
                    <asp:Image ID="img_acc3" runat="server" ImageUrl='<%#Eval("ac_img3") %>' Width="63px" />
                    </ItemTemplate>
                           </asp:TemplateField>
               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("ac_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("ac_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("ac_id") %>' CommandName="Delete"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("ac_id") %>' CommandName="Cancel"/>--%>
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

