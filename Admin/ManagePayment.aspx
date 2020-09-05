<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ManagePayment.aspx.cs" Inherits="Admin_ManagePayment" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
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
                        <h1 class="page-header">Manage Payment</h1>
                        <div class="form-group">
                            <label class="control-label">User Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_uname" CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" MaxLength="13" ReadOnly="true" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label">Car Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_carname" CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" MaxLength="13" ReadOnly="true" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Version Name&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_versionname" CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" MaxLength="13" ReadOnly="true" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Booked Amount&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_bamount" CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" MaxLength="13" ReadOnly="true" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">On Road Price&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_onoad" CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" MaxLength="13" ReadOnly="true" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Total Price&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_total"  CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" MaxLength="13" ReadOnly="true" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                                <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Submit Sale" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>

                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

