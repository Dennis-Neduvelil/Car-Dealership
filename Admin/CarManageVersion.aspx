<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CarManageVersion.aspx.cs" Inherits="Admin_CarManageVersion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">
        <div class="row">
            <div class="">
                <div class="col-md-0"></div>
                    <div class="col-md-11" id="formContainer">
                        <h1 class="page-header">Manage Version Details </h1>
                             <label class="control-label">Select Car&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_carnamrvrmn" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_carnamrvrmn_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                    <label class="control-label">Select Version&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <div class="required-field-block" >
                                <asp:DropDownList ID="Drop_versionvermng" CssClass="form-control" runat="server" OnSelectedIndexChanged="Drop_versionvermng_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>  
                               
                                 <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>

                <div class="col-md-5" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Exterior</h1>
                        
                        </div>
                            
                    
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Fog Light&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_fog"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Rain Sencing Vipers&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_rsviper"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Rear Viper<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_rerviper"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Alloy Wheel&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_alloy"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Rear Spoiler&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_rerspoiler"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Sun Roof&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_sunroof"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            </div>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                   
                    <div class="form-group">
                            <label class="control-label">Other Features&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_extotrfrs" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_extotrfrs" CssClass="form-control" runat="server" placeholder="Other Features" TextMode="MultiLine" MaxLength="245" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                   
                    
                    
                    
                    </div>
                <div class="col-md-1"></div>
                 
                <div class="col-md-5" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Interior</h1>
                        
                  
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Air Conditioner&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_ac"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Heater&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_heater"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Adjustable Seats<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_adjseats"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Cigarette Lighter&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_ciglighter"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Dual Tone Dashboard&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_dualtone"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Leather Seats&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_ltrseats"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group">
                            <label class="control-label">Other Features&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_extotrfrs" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_intotrfrs" CssClass="form-control" runat="server" placeholder="Other Features" TextMode="MultiLine" MaxLength="245" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        </div>
                    <div class="pull-right">
                                
                                      </div>
                    
                    
                    </div>
                    </div>
                                <div class="col-md-1"></div>
                <div class="col-md-11" id="formContainer">
                    <div role="form" style="margin: 0 auto;">
                        <h1 class="page-header">Car Saftey</h1>
                        
                        </div>
              
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Anti-Lock Break System&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_abs"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Central Lock&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_cntrllck"  CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Child Lock<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_childlk"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Air Bags&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_airbags"  CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Rear Camera&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_rercam"  CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    <div class="form-group" style="margin-top:1em">
                            <label class="control-label">Crash Sensor&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:DropDownList ID="Drop_Crashsnr"  CssClass="form-control" runat="server" AutoPostBack="True" >
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                            
                            
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                           --%> 
                        </div>
                    
                    <div class="form-group">
                            <label class="control-label">Other Features&nbsp;<span class="glyphicon glyphicon-hand-down" aria-hidden="true" style="color: #76797E"></span></label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="True" runat="server" ErrorMessage="Required" ControlToValidate="txt_extotrfrs" ForeColor="Red" Display="Dynamic" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <div class="required-field-block" >
                                 <asp:TextBox ID="txt_sftyotrfrs" CssClass="form-control" runat="server" placeholder="Other Features" TextMode="MultiLine" MaxLength="245" ReadOnly="false" ></asp:TextBox>
                            
                                <div class="required-icon">
                                    <div class="text">*</div>
                                </div>
                            </div>
                        
                        </div>
                    <div class="pull-right">
                                
                                      </div>
                     <div class="pull-right">
                                    <asp:Button ID="Btn_save" runat="server" Text="Save" CssClass="btn btn-primary"  ValidationGroup="save" OnClick="Btn_save_Click"  />
                                
                                      </div>
                    
                    </div>
                </div>
          
         </div>
      </div>
</asp:Content>

