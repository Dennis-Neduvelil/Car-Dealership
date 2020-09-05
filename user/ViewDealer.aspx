<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="ViewDealer.aspx.cs" Inherits="user_ViewDealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="module bg-dark-60 about-page-header" data-background="../car%20images/Nexa-Goa.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Dealers</h2>
                <div class="module-subtitle font-serif">Maruthi suzuki way to life wherever you go, go wiyh all your heart.</div>
              </div>
            </div>
          </div>
        </section>
      
        <section class="module">
          <div class="container"/>
              <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
            <div class="row" style="margin-bottom:40px;border-bottom:1px solid black">

              <div class="col-sm-6 mb-sm-40">
                  <a class="gallery" id="dlimg1" runat="server" href="#">
                      <img id="dlimg2" runat="server" src='<%#Eval("dl_img1")%>' style="height:600px;width:600px" alt="" />

                  </a>
                <ul class="product-gallery">
                  <%--<li><a class="gallery" href="assets/images/shop/product-8.jpg"></a><img src="assets/images/shop/product-8.jpg" alt="Single Product"/></li>
                  <li><a class="gallery" href="assets/images/shop/product-9.jpg"></a><img src="assets/images/shop/product-9.jpg" alt="Single Product"/></li>
                  <li><a class="gallery" href="assets/images/shop/product-10.jpg"></a><img src="assets/images/shop/product-10.jpg" alt="Single Product"/></li>--%>
                </ul>
              </div>
              <div class="col-sm-6">
                <div class="row">
                  <div class="col-sm-12">
                    <h1 class="product-title font-alt" id="id_carname2" runat="server"><%#Eval("dl_name") %> </h1>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                  <p style="float:left; margin: 0 0 0px;   font-size: 16px;">State:&nbsp  </p>    <p id="P1" runat="server" style="    margin: 0 0 0px;   font-size: 16px;" ><%#Eval("st_name") %></p>
                    </div>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                      <p style="float:left; margin: 0 0 0px;   font-size: 16px;">District:&nbsp </p><p id="img_desc" runat="server" style="    margin: 0 0 0px;   font-size: 16px;" ><%#Eval("dt_name") %></p>
                    </div>
                  </div>
                </div>
                  <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                      <p style="float:left; margin: 0 0 0px;   font-size: 16px;">Place:&nbsp </p><p id="P2" runat="server" style="    margin: 0 0 0px;   font-size: 16px;" ><%#Eval("pl_location") %></p>
                    </div>
                  </div>
                </div>
                  <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                      <p style="float:left; margin: 0 0 0px;   font-size: 16px;">Address:&nbsp</p><p id="P3" runat="server" style="    margin: 0 0 0px;   font-size: 16px;" ><%#Eval("dl_address") %></p>
                    </div>
                  </div>
                </div>
                  <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                      <p style="float:left; margin: 0 0 0px;   font-size: 16px;">Contact Number:&nbsp </p><p id="P4" runat="server" style="    margin: 0 0 0px;   font-size: 16px;" ><%#Eval("dl_cntnum") %></p>
                    </div>
                  </div>
                </div>
                  <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                      <p style="float:left; margin: 0 0 0px;   font-size: 16px;">Email: &nbsp </p><p id="P5" runat="server" style="    margin: 0 0 0px;   font-size: 16px;" ><%#Eval("dealer_email") %></p>
                    </div>
                  </div>
                </div>
                  <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                      <p style="float:left; margin: 0 0 0px;   font-size: 16px;">Description:&nbsp </p><p id="P6" runat="server" style="    margin: 0 0 0px;   font-size: 16px;" ><%#Eval("dl_desc") %></p>
                    </div>
                  </div>
                </div>
                <div class="row mb-20">
                 
                  <div class="col-sm-8"><a class="btn btn-lg btn-block btn-round btn-b" href='http://<%#Eval("dl_sitelink") %>' target="_blank">View Our Site</a></div>
                
                </div>
                  <div class="row mb-20">
                 
                  <div class="col-sm-8"><a class="btn btn-lg btn-block btn-round btn-b" href='http://<%#Eval("dl_tstdrvlink") %>' target="_blank">Book Your Ride</a></div>
                
                </div>
              </div>
            </div>
                        </ItemTemplate>
                </asp:ListView>
            </section>
</asp:Content>

