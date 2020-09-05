<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarDealer.aspx.cs" Inherits="Admin_CarDealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-0"></div>
                <div class="col-md-12" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Dealerships</h1>
                        <div class="form-group">
                         <label class="control-label">Select State&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_state" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_state_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                            </div>
                        <div class="form-group">
                         <label class="control-label">Select District&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_district" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_district_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                            </div>
                         <label class="control-label">Select Location&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_location" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_location_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        <div class="form-group">
                            <label class="control-label">Dealer Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_dealername" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="nameReg" runat="server" ErrorMessage="Invalid Name" ControlToValidate="txt_dealername" ValidationGroup="save" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$" ></asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_dealername" CssClass="form-control" runat="server" placeholder="Dealer Name" TextMode="SingleLine" MaxLength="40" ReadOnly="false" OnTextChanged="txt_dealername_TextChanged" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Dealer Contact Number&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_dealercntnum" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator 
           ID="regPhone" 
           runat="server" 
	ValidationGroup="save"
	ForeColor="Red"
           ControlToValidate="txt_dealercntnum" 
           ValidationExpression="[0-9]{10}"
           Text="Enter a valid phone number" />
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_dealercntnum" CssClass="form-control" runat="server" placeholder="Dealer Location" TextMode="SingleLine" MaxLength="12" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label"> E-mail&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_dealeremail" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="save" ControlToValidate="txt_dealeremail"
                  CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_dealeremail" CssClass="form-control" runat="server" placeholder="Dealer E-mail" TextMode="SingleLine"  ReadOnly="false" MaxLength="98" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label"> Password &nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_pwd" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_pwd" CssClass="form-control" runat="server" placeholder="Dealer Password" ReadOnly="false" MaxLength="12" ></asp:TextBox>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Dealer Address&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_dealeraddress" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_dealeraddress" CssClass="form-control" runat="server" placeholder="Dealer Address" TextMode="MultiLine" MaxLength="198" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Website URL&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_dealerurl" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_dealerurl" CssClass="form-control" runat="server" placeholder="Dealer URL" MaxLength="199" ReadOnly="false" >https://</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Testdrive Booking URL&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_dealertdurl" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_dealertdurl" CssClass="form-control" runat="server" placeholder="Teastdrive URL" MaxLength="199" ReadOnly="false" >https://</asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                       </div>
                        <div class="form-group">
                          <label class="control-label"> Image 1&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="Upload_dealerimg" runat="server" />
                        <asp:Button ID="btn_upload" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="btn_upload_Click"/>
                        <asp:Image ID="img_dealer1" runat="server" Width="100px" />
                        </div>
                        </div>
                    <div class="form-group">
                          <label class="control-label">Image 2&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="Button1_Click1"/>
                        <asp:Image ID="img_dealer2" runat="server" Width="100px" />
                        </div>
                    <div class="form-group">
                          <label class="control-label">Map Image &nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                        <asp:Button ID="Button2" runat="server" Text="Upload" CssClass="btn btn-danger" OnClick="Button2_Click" />
                        <asp:Image ID="img_dealermap" runat="server" Width="100px" />
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
                        <div class="form-group" style="margin-bottom:5em">
                    <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                            </div>
                    <asp:GridView ID="grid_dealer" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000px" OnRowCommand="grid_dealer_RowCommand" OnRowDeleting="grid_dealer_RowDeleting" OnRowEditing="grid_dealer_RowEditing" OnRowUpdating="grid_dealer_RowUpdating" OnSelectedIndexChanged="grid_dealer_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="dl_name" HeaderText="Name" />
                <asp:BoundField DataField="pl_location" HeaderText="Location" />
                <asp:BoundField DataField="dl_cntnum" HeaderText="Number" />
                <asp:BoundField DataField="dealer_email" HeaderText="E-mail" />
                <asp:BoundField DataField="dl_address" HeaderText="Address" />
                <asp:BoundField DataField="dl_sitelink" HeaderText="URL" />
                <asp:BoundField DataField="dl_tstdrvlink" HeaderText="TD URL" />
                <asp:BoundField DataField="dl_status" HeaderText="Status" />
                       <asp:TemplateField HeaderText="Image1">
                
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("dl_img1") %>' Width="63px" />
                    </ItemTemplate>
                           </asp:TemplateField>
                       <asp:TemplateField HeaderText="Image2">
                
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("dl_img2") %>' Width="63px" />
                    </ItemTemplate>
                           </asp:TemplateField>
<%--                       <asp:TemplateField HeaderText="Map Image">
             
                <ItemTemplate>
                    <asp:Image ID="Image3" runat="server" ImageUrl='<%#Eval("dl_mapimg") %>'  Width="63px" HeaderText= />
                    </ItemTemplate>
                           </asp:TemplateField>--%>

               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
              
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("dl_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("booking_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <%-- creating edit/delete links ends  --%>

            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>


                    </div>
                
                    <div class="pull-right">
                                
                                      </div>
                    
                    </div>

                </div>
            </div>
         
</asp:Content>

