<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="ViewVersion.aspx.cs" Inherits="user_ViewVersion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .modal-dialog {
            width: 120em;
        }
        .modal-content {
        
        height:50em;

        }
    </style>
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 mb-sm-40"><a class="gallery" id="image_car" runat="server" href=""><img id="image_car2" runat="server" src="" style="width:1000px" alt=" " /></a>
                <ul class="product-gallery">
                  <%--<li><a class="gallery" href="assets/images/shop/product-8.jpg"></a><img src="assets/images/shop/product-8.jpg" alt="Single Product"/></li>
                  <li><a class="gallery" href="assets/images/shop/product-9.jpg"></a><img src="assets/images/shop/product-9.jpg" alt="Single Product"/></li>
                  <li><a class="gallery" href="assets/images/shop/product-10.jpg"></a><img src="assets/images/shop/product-10.jpg" alt="Single Product"/></li>--%>
                </ul>
              </div>
              <div class="col-sm-6">
                <div class="row">
                  <div class="col-sm-12">
                    <h1 class="product-title font-alt" id="id_carname2" runat="server"></h1>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12"><span><i class="fa fa-star star"></i></span><span><i class="fa fa-star star"></i></span><span><i class="fa fa-star star"></i></span><span><i class="fa fa-star star"></i></span><span><i class="fa fa-star star-off"></i></span><a class="open-tab section-scroll" href="#reviews">-according to customer reviews</a>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="price font-alt"><span class="amount" id="id_price" runat="server"></span></div>
                  </div>
                    
                </div>
                  <div class="row mb-20">
                  <div class="col-sm-12">
                    
                      <p id="id_bkamt" runat="server" ></p>
                    </div>
           
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                      <p id="img_desc" runat="server" ></p>
                    </div>
                  </div>
                </div>
                <div class="row mb-20">
                 
                  <div class="col-sm-8"><a class="btn btn-lg btn-block btn-round btn-b" data-toggle="modal" data-target="#exampleModalCenter2" href="">Buy Now</a></div>
                
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="product_meta">Categories:<a href="#" id="car_type" runat="server"></a><a href="#" id="car_seat" runat="server"></a><a href="#" id="car_fuel" runat="server"></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row mt-70">
              <div class="col-sm-12">
                <ul class="nav nav-tabs font-alt" role="tablist">
                  <li class="active"><a href="#interior" data-toggle="tab" aria-expanded="true"><span class="icon-tools-2"></span>Interior</a></li>
                  <li><a href="#exterior" data-toggle="tab"><span class="icon-tools-2"></span>Exterior</a></li>
                    <li><a href="#saftey" data-toggle="tab"><span class="icon-tools-2"></span>Saftey</a></li>
                     <li><a href="#engine" data-toggle="tab"><span class="icon-tools-2"></span>Engine</a></li>
                    <li><a href="#measurments" data-toggle="tab"><span class="icon-tools-2"></span>Measurments</a></li>
                    <li><a href="#prc" data-toggle="tab"><span class="icon-tools-2"></span>Price</a></li>
                  <li><a href="#reviews" data-toggle="tab"><span class="icon-tools-2"></span>Reviews</a></li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="interior">
                    <table class="table table-striped ds-table table-responsive">
                      <tbody>
                        <tr>
                          <th>Title</th>
                          <th>Info</th>
                        </tr>
                        <tr>
                          <td>Air-Coditioner</td>
                          <td id="id_ac" runat="server" >NA</td>
                        </tr>
                        <tr>
                          <td>Heater</td>
                          <td id="id_heater" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Adjustable Seat</td>
                          <td id="id_adjseat" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Cigarette Lighter</td>
                          <td id="id_cig" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Dual-Tone Dadhboard</td>
                          <td id="id_dual" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Leather Seats</td>
                          <td id="id_ltr" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Others</td>
                          <td id="id_otr" runat="server">NA</td>
                        </tr> 
                      </tbody>
                    </table>
                  </div>
                    <div class="tab-pane" id="exterior">
                    <table class="table table-striped ds-table table-responsive">
                      <tbody>
                        <tr>
                          <th>Title</th>
                          <th>Info</th>
                        </tr>
                        <tr>
                          <td>Fog Light</td>
                          <td id="id_fog" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Rain Sencing Viper</td>
                          <td id="id_rain" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Rear Window Viper</td>
                          <td id="id_revip" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Alloy Wheel</td>
                          <td id="id_alloy" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Rear Spoiler</td>
                          <td id="id_resp" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Sunroof</td>
                          <td id="id_sun" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Others</td>
                          <td id="id_otrext" runat="server">NA</td>
                        </tr> 
                      </tbody>
                    </table>
                  </div>
                    <div class="tab-pane" id="saftey">
                    <table class="table table-striped ds-table table-responsive">
                      <tbody>
                        <tr>
                          <th>Title</th>
                          <th>Info</th>
                        </tr>
                        <tr>
                          <td>Anti-Lock Break System</td>
                          <td id="id_abs" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Central Lock</td>
                          <td id="id_ctrlk" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Child Lock</td>
                          <td id="id_chlk" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Airbas</td>
                          <td id="id_airbag" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Rear Camera</td>
                          <td id="id_rear" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Crash Sensor</td>
                          <td id="id_crash" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Others</td>
                          <td id="id_otrsaf" runat="server">NA</td>
                        </tr> 
                      </tbody>
                    </table>
                  </div>
                    <div class="tab-pane" id="engine">
                    <table class="table table-striped ds-table table-responsive">
                      <tbody>
                        <tr>
                          <th>Title</th>
                          <th>Info</th>
                        </tr>
                         <tr>
                          <td>Engine Name</td>
                          <td id="id_eng" runat="server">NA</td>
                        </tr> 
                        <tr>
                          <td>Engine Displacement</td>
                          <td id="id_cc" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Power</td>
                          <td id="id_pwr" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Mileage</td>
                          <td id="id_milg" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Torque</td>
                          <td id="id_torq" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Acceleration</td>
                          <td id="id_accl" runat="server">NA</td>
                        </tr>
                          <tr>
                          <td>Top speed</td>
                          <td id="id_tpspd" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Gear</td>
                          <td id="id_gear" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Cylinder</td>
                          <td id="id_cyl" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Transmission</td>
                          <td id="id_trans" runat="server">NA</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                    <div class="tab-pane" id="measurments">
                    <table class="table table-striped ds-table table-responsive">
                      <tbody>
                        <tr>
                          <th>Title</th>
                          <th>Info</th>
                        </tr>
                        <tr>
                          <td>Length</td>
                          <td id="id_cl" runat="server">NA</td>
                        </tr>
                          <tr>
                          <td>Width</td>
                          <td id="id_cw" runat="server">NA</td>
                        </tr>
                          <tr>
                          <td>Height</td>
                          <td id="id_ch" runat="server">NA</td>
                        </tr>
                          <tr>
                          <td>Fornt Tire Size</td>
                          <td id="id_ft" runat="server">NA</td>
                        </tr>
                          <tr>
                          <td>Rear Tire Size</td>
                          <td id="id_rt" runat="server">NA</td>
                        </tr>
                          <tr>
                          <td>Ground Clearence</td>
                          <td id="id_gd" runat="server">NA</td>
                        </tr>
                          <tr>
                          <td>Others</td>
                          <td id="id_ot" runat="server">NA</td>
                        </tr>
                       </tbody>
                    </table>
                  </div>
                    <div class="tab-pane" id="prc">
                    <table class="table table-striped ds-table table-responsive">
                      <tbody>
                        <tr>
                          <th>Title</th>
                          <th>Info</th>
                        </tr>
                        <tr>
                          <td>Price</td>
                          <td id="prc_bsc" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Booking Amount</td>
                          <td id="prc_bk" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Tax+RTO(Include All)</td>
                          <td id="prc_tax" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Insurance</td>
                          <td id="prc_ins" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Other Amounts</td>
                          <td id="prc_otr" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Total</td>
                          <td id="prc_tot" runat="server">NA</td>
                        </tr>
                           <tr>
                          <td>On-Road (*Approx varies with states)</td>
                          <td id="prc_onrd" runat="server">NA</td>
                        </tr>
                        <tr>
                          <td>Description</td>
                          <td id="prc_desc" runat="server">NA</td>
                        </tr> 
                      </tbody>
                    </table>
                  </div>
                  <div class="tab-pane" id="reviews">
                    <div class="comments reviews">

                <asp:ListView ID="ListView4" runat="server">
                 <ItemTemplate>
                      <div class="comment clearfix">
                        <div class="comment-avatar"><img src="../images/avatar1.png" alt="avatar"/></div>
                        <div class="comment-content clearfix">
                          <div class="comment-author font-alt"><a href="#"><%#Eval("rw_name") %></a></div>
                          <div class="comment-body">
                            <p><%#Eval("rw_rev") %></p>
                          </div>
                          <div class="comment-meta font-alt"><%#Convert.ToDateTime(Eval("rw_date")).ToString("dd-MMMM-yyyy") %>---'<span><i class="fa fa-star star"></i></span><%#Eval("rw_stars") %>Stars'
                          </div>
                        </div>
                      </div>
                      </ItemTemplate>
                   </asp:ListView>

                    </div>
                    <div class="comment-form mt-30">
                      <h4 class="comment-form-title font-alt">Add review</h4>
                      <form method="post">
                        <div class="row">
                          <div class="col-sm-4">
                            <div class="form-group">
                              <label class="sr-only" for="name">Name</label>
                              <asp:TextBox class="form-control" id="rw_name" type="text" name="name" placeholder="Name" runat="server"></asp:TextBox>
                            </div>
                          </div>
                          <div class="col-sm-4">
                            <div class="form-group">
                              <label class="sr-only" for="email">Name</label>
                          <asp:TextBox class="form-control" id="rw_email" type="text" name="email" placeholder="E-mail" runat="server"></asp:TextBox>
                            </div>
                          </div>
                          <div class="col-sm-4 mb-sm-20" style="margin-left:65em">
                    <div class="form-group" style="margin-top: -4em">
                        <asp:DropDownList ID="Drop_rw" CssClass="form-control" runat="server" AutoPostBack="false">
                            <asp:ListItem Value="0">Rating</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                           
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                           
                        </asp:DropDownList>
                    </div>
                </div>
                          <div class="col-sm-12">
                            <div class="form-group">
                               <asp:TextBox class="form-control" id="rw_rev" type="text" name="review" placeholder="Review" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                          </div>
                          <div class="col-sm-12">
                            <asp:Button runat="server" Text="Submit Review" ID="btn_rw" class="btn btn-round btn-d" OnClick="btn_rw_Click"></asp:Button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
            <section class="module pb-0" id="works">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Images</h2>
                <div class="module-subtitle font-serif"></div>
              </div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-sm-12">
                <ul class="filter font-alt" id="filters">
                  <li><a class="wow fadeInUp" href="#" data-filter="*" data-wow-delay="0.6s">Interior</a></li>
                  <li><a class="wow fadeInUp" href="#" data-filter="*" data-wow-delay="0.6s">Exterior</a></li>
                    <li><a class="wow fadeInUp" href="#" data-filter="*" data-wow-delay="0.6s">Dash Board</a></li>
                    <li><a class="wow fadeInUp" href="#" data-filter="*" data-wow-delay="0.6s">Boot Space</a></li>
                </ul>
              </div>
            </div>
          </div>
          <ul class="works-grid works-grid-gut works-grid-3 works-hover-w" id="Ul1">
            <li class="work-item illustration webdesign"><a href="portfolio_single_featured_image1.html">
                <div class="work-image"><img id="img1" runat="server" src="" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h3 class="work-title" id="name1" runat="server"></h3>
                </div></a></li>
            <li class="work-item illustration webdesign"><a href="portfolio_single_featured_image1.html">
                <div class="work-image"><img id="Img2" runat="server" src="" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h3 class="work-title" id="name2" runat="server"></h3>
                </div></a></li>
              <li class="work-item illustration webdesign"><a href="portfolio_single_featured_image1.html">
                <div class="work-image"><img id="Img3" runat="server" src="" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h3 class="work-title" id="name3" runat="server"></h3>
                </div></a></li>
              <li class="work-item illustration webdesign"><a href="portfolio_single_featured_image1.html">
                <div class="work-image"><img id="Img4" runat="server" src="" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h3 class="work-title" id="name4" runat="server"></h3>
                </div></a></li>
              <li class="work-item illustration webdesign"><a href="portfolio_single_featured_image1.html">
                <div class="work-image"><img id="Img5" runat="server" src="" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h3 class="work-title" id="name5" runat="server"></h3>
                </div></a></li>
              <li class="work-item illustration webdesign"><a href="portfolio_single_featured_image1.html">
                <div class="work-image"><img id="Img6" runat="server" src="" alt="Portfolio Item"/></div>
                <div class="work-caption font-alt">
                  <h3 class="work-title" id="name6" runat="server"></h3>
                </div></a></li>
          </ul>
        </section>
        <hr class="divider-w" >
        <section class="module-small">
          <div class="container-fluid">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3" style="margin-top:7em">
                <h2 class="module-title font-alt">Related Products</h2>
              </div>
            </div>
              <asp:ListView ID="ListView2" runat="server" OnItemCommand="ListView2_ItemCommand">
                 <ItemTemplate>
            <div class="row multi-columns-row">
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src= '<%#Eval("car_image") %>' alt="" style="width:615px;min-width:461px"/>
                    <div class="shop-item-detail">
                     
                           <a class="btn btn-round btn-b" id="book" runat="server" ><span class="icon-basket"><asp:Button ID="Button1" CommandArgument='<%#Eval("vr_id") %>'  runat="server"  class="" style="background-color:transparent;border:none"  Text="View Car" /></span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="#"><%#Eval("vr_name") %> </a></h4>
                </div>
              </div>
                </ItemTemplate>
        </asp:ListView>
            </div>
      </section>
        <hr class="divider-w">
        <section class="module">
          <div class="container-fluid">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Exclusive products</h2>
                <div class="module-subtitle font-serif">The languages only differ in their grammar, their pronunciation and their most common words.</div>
              </div>
            </div>
            <div class="row">
              <div class="owl-carousel text-center" data-items="5" data-pagination="false" data-navigation="false">

                  <asp:ListView ID="ListView3" runat="server">
                      <ItemTemplate>

                <div class="owl-item" style="margin: 16px 13px;">
                  <div class="col-sm-12">
                    <div class="ex-product"><a class="fancyboxhd fancybox.iframe" href="ShowVerName.aspx?id=<%#Eval("cn_id") %>">
                        <img src='<%#Eval("car_image") %>' alt="" style="width:615px;min-width:461px"/></a>
                      <h4 class="shop-item-title font-alt"><a href="#"><%#Eval("cn_dispname") %></a></h4>
                        <h4 class="shop-item-title font-alt"><a href="#"><%#Eval("cn_fuel") %></a></h4>
                    </div>
                  </div>
                </div>
                          </ItemTemplate>
                      </asp:ListView>
          
              
              </div>
            </div>
          </div>
            <style>
                .modal-backdrop {
                z-index:0;

                }
                    .modal-backdrop.fade {
                        opacity: 0;
                    }
            </style>
            <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog" role="document" style="top:25%">
    <div class="modal-content">
      <div class="modal-header" style="background-color:#111111;color:white !important ">
        <h5 class="modal-title" id="exampleModalLongTitle">Choose Colour to Continue !</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" style="color:white;width:10em" >&times;</span>
        </button>
      </div>
         
        
      <div class="modal-body">
             <ul class="works-grid works-grid-gut works-grid-3 works-hover-w" id="works-grid">
          <asp:ListView ID="ListView1" runat="server">

              <ItemTemplate>


                  
            <li class="work-itemm  col-md-4"><a href="CarBooking.aspx?clrid=<%#Eval("cclr_id") %>&vrid=<%#Eval("vr_id") %>">
                <div class="work-image">
                    <img src='<%#Eval("cclr_img") %>' alt="Portfolio Item" />
                </div>
                <div class="work-caption font-alt">
                    <h3 class="work-title">'<%#Eval("cclr_name") %>'</h3>
                    <div class="work-descr">'<%#Eval("cclr_code") %>'</div>
                </div>
            </a></li>
              </ItemTemplate>
          </asp:ListView>
</ul>

      </div>
               

  
      <%--<div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          
      </div>--%>
                
    </div>
  </div>
</div>
        </section>
    
     
</asp:Content>

