<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="Accessories.aspx.cs" Inherits="user_Accessories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="module bg-dark-60 about-page-header" data-background="../car%20images/acc%202.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Accessories</h2>
                <div class="module-subtitle font-serif">Maruthi suzuki way to life wherever you go, go wiyh all your heart.</div>
              </div>
            </div>
          </div>
        </section>
                <section class="module-small">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 mb-sm-20" style="margin-left:39em">
                    <div class="form-group" style="margin-top: 0em">
                        <asp:DropDownList ID="Drop_car" CssClass="form-control" runat="server" AutoPostBack="false">
                        </asp:DropDownList>
                    </div>
                </div>
               <div class="col-sm-3">
                   <asp:Button runat="server" Text="Apply" ID="btn" class="btn btn-block btn-round btn-b" OnClick="btn_Click"></asp:Button>
                </div>
            </div>
        </div>
    </section>
        <section class="module pb-0" id="works">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Genuine Accessories</h2>
                <div class="module-subtitle font-serif"></div>
              </div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-sm-12">
              </div>
            </div>
          </div>
            <ul class="works-grid works-grid-gut works-grid-3 works-hover-w" id="works-grid">
                        <asp:ListView ID="ListView1" runat="server">
                  <ItemTemplate>
          
            <li class="work-item illustration webdesign"><a class="fancyboxhd fancybox.iframe" href="Accessory_Details.aspx?ac_id=<%#Eval("ac_id")%>">
                <div class="work-image"><img src='<%#Eval("ac_img1") %>' alt="Accessory Image"/></div>
                <div class="work-caption font-alt">
                  <h3 class="work-title">'<%#Eval("ac_name") %>'</h3>
                    <h3 class="work-title">'<%#Eval("ac_brand") %>'</h3>
                    <h3 class="work-title">'<%#Eval("cn_name") %>'</h3>
                    <%--<h3 class="work-title">'<%#Eval("ac_warrenty") %>'</h3>
                    <h3 class="work-title">'Rs.<%#Eval("ac_price") %>'</h3>
                    <h3 class="work-title">'<%#Eval("ac_desc") %>'</h3>--%>
                </div></a></li>
                      </ItemTemplate>
                  </asp:ListView>
                </ul>
              <style>
                .fancybox-inner {
                height:62em !important;
                }
                  .fancybox-iframe {
                  height:62em;
                  }
            </style>
        </section>
      <script type="text/javascript" src="FancyBox/js/source/jquery.fancybox.js"></script>

            <script type="text/javascript">

                $(document).ready(function () {
                    $('.fancyboxhd').fancybox({
                        width: 13900,
                        height: 800,
                        fitToView: true,
                        autoSize: true,

                    });


                });


            </script>
</asp:Content>

