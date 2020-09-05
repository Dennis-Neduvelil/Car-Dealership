<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="user_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="module bg-dark-60 shop-page-header" data-background="../car%20images/Dzire_teaser_1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2 class="module-title font-alt">Gallery</h2>
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
                        <asp:DropDownList ID="Drop_cartype" CssClass="form-control" runat="server" AutoPostBack="false">
                            <asp:ListItem>All</asp:ListItem>
                            <asp:ListItem>Premium</asp:ListItem>
                            <asp:ListItem>Sedan</asp:ListItem>
                            <asp:ListItem>Hatchback</asp:ListItem>
                            <asp:ListItem>SUV</asp:ListItem>
                            <asp:ListItem>4X4</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <%--<div class="col-sm-2 mb-sm-20">
                    <select class="form-control">
                        <option selected="selected">Woman</option>
                        <option>Man</option>
                    </select>
                </div>
                <div class="col-sm-3 mb-sm-20">
                    <select class="form-control">
                        <option selected="selected">All</option>
                        <option>Coats</option>
                        <option>Jackets</option>
                        <option>Dresses</option>
                        <option>Jumpsuits</option>
                        <option>Tops</option>
                        <option>Trousers</option>
                    </select>
                </div>--%>
               <div class="col-sm-3">
                   <asp:Button runat="server" Text="Apply" ID="btn" class="btn btn-block btn-round btn-b" OnClick="Unnamed1_Click"></asp:Button>
                </div>
            </div>
        </div>
    </section>
    <hr class="divider-w">
    <section class="module-small">
        <div class="container">
            <div class="row multi-columns-row">
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>

                        <div class="col-sm-6 col-md-4 col-lg-4">
                            <div class="shop-item">
                                <div class="shop-item-image">
                                    <img src='<%#Eval("car_image") %>' alt="" style="width:600px;min-width:420px"/>
                                    <div class="shop-item-detail"><a class="btn btn-round btn-b fancyboxhd fancybox.iframe btn btn-danger" id="fancy" href="ShowVerName.aspx?id=<%#Eval("cn_id") %>"><span class="icon-basket">View Car</span></a></div>
                                </div>
                                <h4 class="shop-item-title font-alt"><a href="#"><%#Eval("cn_dispname") %> </a></h4>
                                <h4 class="shop-item-title font-alt"><a href="#">Catogery:<%#Eval("cd_type") %></a></h4>
                                <h4 class="shop-item-title font-alt"><a href="#">Fuel Type:<%#Eval("cn_fuel") %></a></h4>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:ListView>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="pagination font-alt"><a href="#"><i class="fa fa-angle-left"></i></a><a class="active" href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#"><i class="fa fa-angle-right"></i></a></div>
                </div>
            </div>
        </div>
    </section>
    <section class="module-small bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-8 col-lg-6 col-lg-offset-2">
                    <div class="callout-text font-alt">
                        <h3 class="callout-title">Want to see ride now?</h3>
                        <p>We are always open to interesting projects.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <div class="callout-btn-box"><a class="btn btn-w btn-round" href="CarTestdrive.aspx">Book Your Ride Now</a></div>
                </div>
            </div>
        </div>
    </section>
    <%--<div class="module-small bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">About Titan</h5>
                  <p>The languages only differ in their grammar, their pronunciation and their most common words.</p>
                  <p>Phone: +1 234 567 89 10</p>Fax: +1 234 567 89 10
                  <p>Email:<a href="#">somecompany@example.com</a></p>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Recent Comments</h5>
                  <ul class="icon-list">
                    <li>Maria on <a href="#">Designer Desk Essentials</a></li>
                    <li>John on <a href="#">Realistic Business Card Mockup</a></li>
                    <li>Andy on <a href="#">Eco bag Mockup</a></li>
                    <li>Jack on <a href="#">Bottle Mockup</a></li>
                    <li>Mark on <a href="#">Our trip to the Alps</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Blog Categories</h5>
                  <ul class="icon-list">
                    <li><a href="#">Photography - 7</a></li>
                    <li><a href="#">Web Design - 3</a></li>
                    <li><a href="#">Illustration - 12</a></li>
                    <li><a href="#">Marketing - 1</a></li>
                    <li><a href="#">Wordpress - 16</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Popular Posts</h5>
                  <ul class="widget-posts">
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="#"><img src="assets/images/rp-1.jpg" alt="Post Thumbnail"/></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">Designer Desk Essentials</a></div>
                        <div class="widget-posts-meta">23 january</div>
                      </div>
                    </li>
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="#"><img src="assets/images/rp-2.jpg" alt="Post Thumbnail"/></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">Realistic Business Card Mockup</a></div>
                        <div class="widget-posts-meta">15 February</div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>--%>
    <hr class="divider-d">
</asp:Content>

