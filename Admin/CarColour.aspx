<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarColour.aspx.cs" Inherits="Admin_CarColour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div class="form-group">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Colour</h1>
                         <label class="control-label">Select Car&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carnamecolor" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_carnamecolor_SelectedIndexChanged"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        </div>
                    <div class="form-group">
                            <label class="control-label">Colour Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_colorname" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="nameReg" runat="server" ErrorMessage="Invalid colour" ControlToValidate="txt_colorname" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_colorname" CssClass="form-control" runat="server" placeholder="Colour Name" MaxLength="30" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                    <div class="form-group">
                            <label class="control-label">Colour Code&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_colorcode" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_colorcode" CssClass="form-control" runat="server" placeholder="Colour Code" TextMode="SingleLine" MaxLength="20" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                    <div class="form-group">
                          <label class="control-label"> Colour Icon&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_icon" runat="server" />
                        <asp:Button ID="btn_uploadicon" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_uploadicon_Click"/>
                        <asp:Image ID="img_icon" runat="server" Width="100px" />
                        </div>
                    <div class="form-group">
                          <label class="control-label"> Car Image&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_carimage" runat="server" />
                        <asp:Button ID="btn_uploadimg" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_uploadimg_Click"/>
                        <asp:Image ID="img_car" runat="server" Width="100px" />
                        </div>
                    <label class="control-label">Choose Status&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_status" CssClass="form-control" runat="server" >
                                    <asp:ListItem Selected="True" Value="Enabled">Enabled</asp:ListItem>
                                    <asp:ListItem Value="Disabled">Disabled</asp:ListItem>
                                </asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        <br/>
                    <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>

                    <asp:GridView ID="grid_carcolor" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_carcolor_RowCommand" OnRowDeleting="grid_carcolor_RowDeleting" OnRowEditing="grid_carcolor_RowEditing" OnRowUpdating="grid_carcolor_RowUpdating" OnSelectedIndexChanged="grid_carcolor_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cn_name" HeaderText="Car Name" />
                <asp:BoundField DataField="cclr_name" HeaderText="Colour Name" />
                <asp:BoundField DataField="cclr_code" HeaderText="Colour Code" />
                <asp:BoundField DataField="cclr_status" HeaderText="Status" />
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="Img_icon" runat="server" ImageUrl='<%#Eval("cclr_icon") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="Img_car" runat="server" ImageUrl='<%#Eval("cclr_img") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>
               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("cclr_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("cclr_id") %>' CommandName="Cancel"/>--%>
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

