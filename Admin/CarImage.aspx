<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarImage.aspx.cs" Inherits="Admin_CarImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Image</h1>
                         <label class="control-label">Select Car&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carnameimg" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_carnameimg_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        <div class="form-group">
                          <label class="control-label"> Car Image 1&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_carimg1" runat="server" />
                        <asp:Button ID="btn_upload1" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_upload1_Click"/>
                        <asp:Image ID="img_car1" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                          <label class="control-label"> Car Image 2&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_carimg2" runat="server" />
                        <asp:Button ID="btn_upload2" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_upload2_Click"/>
                        <asp:Image ID="img_car2" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                          <label class="control-label"> Car Image 3&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_carimg3" runat="server" />
                        <asp:Button ID="btn_upload3" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_upload3_Click"/>
                        <asp:Image ID="img_car3" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                          <label class="control-label"> Car Image 4&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_carimg4" runat="server" />
                        <asp:Button ID="btn_upload4" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_upload4_Click"/>
                        <asp:Image ID="img_car4" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                          <label class="control-label"> Car Image 5&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_carimg5" runat="server" />
                        <asp:Button ID="btn_upload5" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_upload5_Click"/>
                        <asp:Image ID="img_car5" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                          <label class="control-label"> Car Image 6&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_carimg6" runat="server" />
                        <asp:Button ID="btn_upload6" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_upload6_Click"/>
                        <asp:Image ID="img_car6" runat="server" Width="100px" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Car Image Description&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_carimgdesc" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_carimgdesc" CssClass="form-control" runat="server" placeholder="Car Image Decription" TextMode="MultiLine" MaxLength="450" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                        <asp:GridView ID="grid_carimg" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_carimg_RowCommand" OnRowDeleting="grid_carimg_RowDeleting" OnRowEditing="grid_carimg_RowEditing" OnRowUpdating="grid_carimg_RowUpdating" OnSelectedIndexChanged="grid_carimg_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cn_name" HeaderText="Car Name" />
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="img_car1" runat="server" ImageUrl='<%#Eval("cimg_1") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="img_car2" runat="server" ImageUrl='<%#Eval("cimg_2") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="img_car3" runat="server" ImageUrl='<%#Eval("cimg_3") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="img_car4" runat="server" ImageUrl='<%#Eval("cimg_4") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="img_car5" runat="server" ImageUrl='<%#Eval("cimg_5") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="img_car6" runat="server" ImageUrl='<%#Eval("cimg_6") %>' Width="50px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                <asp:BoundField DataField="cimg_desc" HeaderText="Description" />
                

               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("cimg_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("cimg_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("cimg_id") %>' CommandName="Delete"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("cimg_id") %>' CommandName="Cancel"/>--%>
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

