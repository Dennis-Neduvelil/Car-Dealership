<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_maruthi.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <%--used for display search text box--%>
      <div  class="row">
          
     <div class="form-group has-feedback col-lg-2 col-lg-offset-9">
    <label class="control-label col-lg-2" for="inputSuccess2">
       
          <asp:TextBox ID="txt_search" CssClass="form-control" runat="server"  placeholder="Search here"  Width="180px" AutoPostBack="True" OnTextChanged="txt_search_TextChanged"></asp:TextBox>
        
        <cc1:AutoCompleteExtender  ID="AutoCompleteExtender1" runat="server" TargetControlID="txt_search"
                 MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="100" 
                 ServiceMethod="getTitle" ></cc1:AutoCompleteExtender>

    <span class="glyphicon glyphicon-search form-control-feedback responsive" style="margin-left:10px; margin-top:-28px; top: 27px; right: 0; width: 32px; left: 130px;"></span>
        </label>
</div>
          <div class="featured col-lg-0 col-lg-offset-3">
           <h3 style="margin-right:300px; margin-bottom:1em;">Featured Products</h3>
              </div>
        </div>
     <%--------%>
     



    <div class="featured responsive">
        
        
        <div class="rsidebar span_1_of_left responsive"  style="width:200px; height:800px;margin-bottom:auto  ">
				<section id="catSection" runat="server" class="sky-form">
                    	<script>
                    	    $(document).ready(function () {
                    	        $(".tab1 .single-bottom").hide();
                    	        $(".tab2 .single-bottom").hide();
                    	        $(".tab3 .single-bottom").hide();
                    	        $(".tab4 .single-bottom").hide();
                    	        $(".tab5 .single-bottom").hide();

                    	        $(".tab1 ul").click(function () {
                    	            $(".tab1 .single-bottom").slideToggle(300);
                    	            $(".tab2 .single-bottom").hide();
                    	            $(".tab3 .single-bottom").hide();
                    	            $(".tab4 .single-bottom").hide();
                    	            $(".tab5 .single-bottom").hide();
                    	        })
                    	        $(".tab2 ul").click(function () {
                    	            $(".tab2 .single-bottom").slideToggle(300);
                    	            $(".tab1 .single-bottom").hide();
                    	            $(".tab3 .single-bottom").hide();
                    	            $(".tab4 .single-bottom").hide();
                    	            $(".tab5 .single-bottom").hide();
                    	        })
                    	        $(".tab3 ul").click(function () {
                    	            $(".tab3 .single-bottom").slideToggle(300);
                    	            $(".tab4 .single-bottom").hide();
                    	            $(".tab5 .single-bottom").hide();
                    	            $(".tab2 .single-bottom").hide();
                    	            $(".tab1 .single-bottom").hide();
                    	        })
                    	        $(".tab4 ul").click(function () {
                    	            $(".tab4 .single-bottom").slideToggle(300);
                    	            $(".tab5 .single-bottom").hide();
                    	            $(".tab3 .single-bottom").hide();
                    	            $(".tab2 .single-bottom").hide();
                    	            $(".tab1 .single-bottom").hide();
                    	        })
                    	        $(".tab5 ul").click(function () {
                    	            $(".tab5 .single-bottom").slideToggle(300);
                    	            $(".tab4 .single-bottom").hide();
                    	            $(".tab3 .single-bottom").hide();
                    	            $(".tab2 .single-bottom").hide();
                    	            $(".tab1 .single-bottom").hide();
                    	        })
                    	    });
						</script>
                    </section>
            </div>
               



        <div class="row container col-lg-8  col-lg-offset-0">  
            <div class="row col-md-2"> 
             <asp:LinkButton ID="LinkButton1" CssClass="badge" runat="server"  OnClick="btn_all_Click"  >All Category</asp:LinkButton>
                </div>
             <div class="row col-md-3 col-md-offset--1"> 
            <asp:DataList ID="DataList1" runat="server" CellSpacing="50" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnInit="btn_all1_Click" OnLoad="DataList1_Load" CellPadding="4" OnItemDataBound="DataList1_ItemDataBound" >

            <ItemTemplate>               
                       <asp:LinkButton ID="btn_all1" CssClass="badge" BackColor="Gray" runat="server" CommandArgument='<%# Eval("category_name") %>'  OnClick="btn_all1_Click" CommandName="view"    ><%# Eval("category_name") %></asp:LinkButton>
            </ItemTemplate>
        </asp:DataList>
                 </div>


             </div>
           <%-- <asp:LinkButton ID="btn_all" CssClass="badge" runat="server" OnClick="btn_all_Click">All Category</asp:LinkButton>
            <asp:LinkButton ID="btn_car" CssClass="badge" runat="server" OnClick="btn_car_Click">Cars</asp:LinkButton>
            <asp:LinkButton ID="btn_mpv" CssClass="badge" runat="server" OnClick="btn_mpv_Click">MPV</asp:LinkButton>
            <asp:LinkButton ID="btn_suv" CssClass="badge" runat="server" OnClick="btn_suv_Click">SUV</asp:LinkButton>
            <asp:LinkButton ID="btn_hybrid" CssClass="badge" runat="server" OnClick="btn_hybrid_Click">Hybrid</asp:LinkButton>
            <asp:LinkButton ID="btn_compare" CssClass="badge" runat="server" OnClick="btn_compare_Click">Compare cars</asp:LinkButton>--%>

       
        
	 <div class="container col-md-0" id="divProduct" style="width:1300px; margin-right:-20px; margin-left:100px; " runat="server">
        

         </div>
         </div>
        

    <div class="container" id="divArrival" runat="server">
        </div>
</asp:Content>

