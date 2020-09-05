<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarMeasurments.aspx.cs" Inherits="Admin_CarMeasurments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <div class="col-md-9" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Measurments</h1>
                        <div class="form-group">
                         <label class="control-label">Select Car&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carmsg" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Drop_carmsg_SelectedIndexChanged"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Car Length&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator1" setfocusonerror="True" runat="server" errormessage="Required" controltovalidate="txt_carlength" forecolor="Red" display="Dynamic" validationgroup="save"></asp:requiredfieldvalidator>
                            <div class="required-field-block">
                                <asp:textbox id="txt_carlength" cssclass="form-control" runat="server" placeholder="Car Length" textmode="SingleLine" maxlength="10" readonly="false">Mm</asp:textbox>

                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Car Width&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator2" setfocusonerror="True" runat="server" errormessage="Required" controltovalidate="txt_carwidth" forecolor="Red" display="Dynamic" validationgroup="save"></asp:requiredfieldvalidator>
                            <div class="required-field-block">
                                <asp:textbox id="txt_carwidth" cssclass="form-control" runat="server" placeholder="Car Width" textmode="SingleLine" maxlength="10" readonly="false">Mm</asp:textbox>

                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Car Height&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator3" setfocusonerror="True" runat="server" errormessage="Required" controltovalidate="txt_carheight" forecolor="Red" display="Dynamic" validationgroup="save"></asp:requiredfieldvalidator>
                            <div class="required-field-block">
                                <asp:textbox id="txt_carheight" cssclass="form-control" runat="server" placeholder="Car Height" textmode="SingleLine" maxlength="10" readonly="false">Mm</asp:textbox>

                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Front Tire Size&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator4" setfocusonerror="True" runat="server" errormessage="Required" controltovalidate="txt_ftire" forecolor="Red" display="Dynamic" validationgroup="save"></asp:requiredfieldvalidator>
                            <div class="required-field-block">
                                <asp:textbox id="txt_ftire" cssclass="form-control" runat="server" placeholder="Front Tire Size" textmode="SingleLine" maxlength="10" readonly="false">Mm</asp:textbox>

                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Rear Tire Size&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator5" setfocusonerror="True" runat="server" errormessage="Required" controltovalidate="txt_rtire" forecolor="Red" display="Dynamic" validationgroup="save"></asp:requiredfieldvalidator>
                            <div class="required-field-block">
                                <asp:textbox id="txt_rtire" cssclass="form-control" runat="server" placeholder="Rear Tire Size" textmode="SingleLine" maxlength="10" readonly="false">Mm</asp:textbox>

                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Ground Clearence<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator6" setfocusonerror="True" runat="server" errormessage="Required" controltovalidate="txt_gnd" forecolor="Red" display="Dynamic" validationgroup="save"></asp:requiredfieldvalidator>
                            <div class="required-field-block">
                                <asp:textbox id="txt_gnd" cssclass="form-control" runat="server" placeholder="Ground Clearence" textmode="SingleLine" maxlength="10" readonly="false">Mm</asp:textbox>

                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Others&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator7" setfocusonerror="True" runat="server" errormessage="Required" controltovalidate="txt_others" forecolor="Red" display="Dynamic" validationgroup="save"></asp:requiredfieldvalidator>
                            <div class="required-field-block">
                                <asp:textbox id="txt_others" cssclass="form-control" runat="server" placeholder="Others" textmode="MultiLine" maxlength="245" readonly="false"></asp:textbox>

                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right">
                            <asp:button id="Btn_save" runat="server" text="Save" cssclass="btn btn-primary" validationgroup="save" OnClick="Btn_save_Click" />

                        </div>
                        <asp:GridView ID="grid_carmeasurments" runat="server" CssClass="table-condensed" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="766px" BorderStyle="None" BorderWidth="1px" OnRowCommand="grid_carmeasurments_RowCommand" OnSelectedIndexChanged="grid_carmeasurments_SelectedIndexChanged" OnRowCreated="grid_carmeasurments_RowCreated" OnRowDeleting="grid_carmeasurments_RowDeleting" OnRowEditing="grid_carmeasurments_RowEditing" OnRowUpdating="grid_carmeasurments_RowUpdating" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cn_name" HeaderText="Car Name" />
                <asp:BoundField DataField="cm_crlength" HeaderText="Car Length" />
                <asp:BoundField DataField="cm_crwidth" HeaderText="Car Width" />
                <asp:BoundField DataField="cm_crheight" HeaderText="Car Height" />
                <asp:BoundField DataField="cm_ftsize" HeaderText="Front Tire" />
                <asp:BoundField DataField="cm_rtsize" HeaderText="Rear Tire" />
                <asp:BoundField DataField="cm_ground" HeaderText="Ground Clearence" />

               <%-- <asp:BoundField DataField="secr" HeaderText="Staff Or Secretary" />--%>
               <%-- <asp:BoundField DataField="Meeting_EnteringDate" HeaderText="EnteringDate" DataFormatString="{0:dd/MM/yyyy}"/>--%>
               

                 <%--<asp:BoundField DataField="From_date" HeaderText="From Date" DataFormatString="{0:dd/MM/yyyy}"/>--%> <%-- DataFormatString string is used to display only date from datetime --%>
                <%-- creating edit/delete links starts  --%>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                     <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/images/edit_icon.png" ToolTip="Edit"  CommandArgument='<%#Eval("cm_id") %>' CommandName="Edit"/>
                    <%--  <asp:ImageButton ID="imgCancel" runat="server" ImageUrl="~/images/cancelButton.jpg" ToolTip="Cancel"  CommandArgument='<%#Eval("booking_id") %>' CommandName="Cancel"/>--%>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/images/delete.png" ToolTip="Delete"  CommandArgument='<%#Eval("cm_id") %>' CommandName="Delete"/>
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
</asp:Content>

