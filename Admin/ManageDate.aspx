<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ManageDate.aspx.cs" Inherits="Admin_ManageDate" %>
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
                            <label class="control-label">Test Date&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_date" CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" ></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txt_date" Format="yyyy-MM-dd">
    </asp:CalendarExtender>
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label">Time From&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_timedfrom" CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" MaxLength="2" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label">Time To&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_timeto" CssClass="form-control" runat="server" placeholder="Colour Name" TextMode="SingleLine" MaxLength="2"  ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                           
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="pull-right">
                                 
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                            </div>
                        </div>

                        </div>
                        </div>
                    </div>
                </div>
            </div>
         </div>
</asp:Content>

