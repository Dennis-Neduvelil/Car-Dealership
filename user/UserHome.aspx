<%@ Page Title="" Language="C#" MasterPageFile="~/user/Master_Page.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="user_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="home-section home-full-height bg-dark-30" id="home" data-background="../car%20images/71840-4_3_1cc.jpg">
        <div class="video-player" data-property="{videoURL:'https://www.youtube.com/watch?v=XLBHok6DnQ8', containment:'.home-section', startAt:18, mute:false, autoPlay:true, loop:true, opacity:1, showControls:false, showYTLogo:false, vol:25}"></div>
        <div class="video-controls-box">
            <div class="container">
                <div class="video-controls"><a class="fa fa-volume-up" id="video-volume" href="#">&nbsp;</a><a class="fa fa-pause" id="video-play" href="#">&nbsp;</a></div>
            </div>
        </div>
        <div class="titan-caption">
            <div class="caption-content">
                <div class="font-alt mb-30 titan-title-size-1">Hello &amp; Here Is</div>
                <div class="font-alt mb-40 titan-title-size-4">ALL NEW SWIFT SPORT</div>
                <a class="section-scroll btn btn-border-w btn-round" href="#about">Learn More</a>
            </div>
        </div>
    </section>
    <section class="module" id="alt-features">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2 class="module-title font-alt">Our Values</h2>
                    <div class="module-subtitle font-serif">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-3 col-lg-3">
                    <div class="alt-features-item">
                        <div class="alt-features-icon"><span class="icon-strategy"></span></div>
                        <h3 class="alt-features-title font-alt">TECHNOLOGY</h3>
                        We believes in green technology.
                    </div>
                    <div class="alt-features-item">
                        <div class="alt-features-icon"><span class="icon-tools-2"></span></div>
                        <h3 class="alt-features-title font-alt">EXPERIENCE</h3>
                        We puts people at the centre of everything it does.
                    </div>
                    <div class="alt-features-item">
                        <div class="alt-features-icon"><span class="icon-target"></span></div>
                        <h3 class="alt-features-title font-alt">SAFTEY</h3>
                        Your safety is our number one priority.
                    </div>
                    <div class="alt-features-item">
                        <div class="alt-features-icon"><span class="icon-tools"></span></div>
                        <h3 class="alt-features-title font-alt">DESIGN</h3>
                        We ensure that every design element serves a purpose.
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 hidden-xs hidden-sm">
                    <div class="alt-services-image align-center">
                        <img src="../car images/Suzuki-logo 517 hh 704.png" alt="Feature Image">
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 col-lg-3">
                    <div class="alt-features-item">
                        <div class="alt-features-icon"><span class="icon-camera"></span></div>
                        <h3 class="alt-features-title font-alt">RESPONSIBLE</h3>
                        You can always rely on us and our network.
                    </div>
                    <div class="alt-features-item">
                        <div class="alt-features-icon"><span class="icon-mobile"></span></div>
                        <h3 class="alt-features-title font-alt">DYNAMISM</h3>
                        Always evolving with your needs..
                    </div>
                    <div class="alt-features-item">
                        <div class="alt-features-icon"><span class="icon-linegraph"></span></div>
                        <h3 class="alt-features-title font-alt">OPEN</h3>
                        All our actions are open and transparent.
                    </div>
                    <div class="alt-features-item">
                        <div class="alt-features-icon"><span class="icon-basket"></span></div>
                        <h3 class="alt-features-title font-alt">EFFICIENT</h3>
                        Expertise that ensures utmost efficiency.
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="module bg-dark-60" data-background="../car%20images/ignis%201920%20x1280.jpg">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="video-box">
                        <div class="video-box-icon"><a class="video-pop-up" href="https://www.youtube.com/watch?v=lsKW6gT-WK8"><span class="icon-video"></span></a></div>
                        <div class="video-title font-alt">THE UNIQUE IGNIS</div>
                        <div class="video-subtitle font-alt">Watch the video about our new and unique ignis</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="module pb-0" id="works">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2 class="module-title font-alt">Our Works</h2>
                    <div class="module-subtitle font-serif"></div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="filter font-alt" id="filters">
                        <li><a class="current wow fadeInUp" href="#" data-filter="*">All</a></li>
                        <li><a class="wow fadeInUp" href="#" data-filter=".premium" data-wow-delay="0.2s">Premium</a></li>
                        <li><a class="wow fadeInUp" href="#" data-filter=".sedan" data-wow-delay="0.4s">Sedan</a></li>
                        <li><a class="wow fadeInUp" href="#" data-filter=".hatchback" data-wow-delay="0.6s">Hatchback</a></li>
                        <li><a class="wow fadeInUp" href="#" data-filter=".suv" data-wow-delay="0.6s">SUV</a></li>
                        <li><a class="wow fadeInUp" href="#" data-filter=".4x4" data-wow-delay="0.6s">4X4</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="works-grid works-grid-gut works-grid-3 works-hover-w" id="works-grid">
            <li class="work-item premium hatchback"><%--<a href="portfolio_single_featured_image1.html">--%>
                <div class="work-image">
                    <img src="../car images/Baleno qq.jpg" alt="Portfolio Item" />
                </div>
                <div class="work-caption font-alt">
                    <h3 class="work-title">Bold</h3>
                    <div class="work-descr">Baleno</div>
                </div>
            </a></li>
            <li class="work-item premium sedan"><%--<a href="portfolio_single_featured_image2.html">--%>
                <div class="work-image">
                    <img src="../car images/CIAZ qq.jpg" alt="Portfolio Item" />
                </div>
                <div class="work-caption font-alt">
                    <h3 class="work-title">Inspirational</h3>
                    <div class="work-descr">ciaz</div>
                </div>
            </a></li>
            <li class="work-item hatchback"><%--<a href="portfolio_single_featured_slider1.html">--%>
                <div class="work-image">
                    <img src="../car images/IGNIS qq.jpg" alt="Portfolio Item" />
                </div>
                <div class="work-caption font-alt">
                    <h3 class="work-title">Unique</h3>
                    <div class="work-descr">Ignis</div>
                </div>
            </a></li>
            <li class="work-item hatchback"><%--<a href="portfolio_single_featured_slider2.htmll">--%>
                <div class="work-image">
                    <img src="../car images/Alto-800 qq.jpg" alt="Portfolio Item" />
                </div>
                <div class="work-caption font-alt">
                    <h3 class="work-title">Adventure</h3>
                    <div class="work-descr">Alto 800</div>
                </div>
            </a></li>
            <li class="work-item suv"><%--<a href="portfolio_single_featured_video1.html">--%>
                <div class="work-image">
                    <img src="../car images/brezza qq.jpg" alt="Portfolio Item" />
                </div>
                <div class="work-caption font-alt">
                    <h3 class="work-title">Sporty Glamour</h3>
                    <div class="work-descr">Vitara Brezza</div>
                </div>
            </a></li>
            <li class="work-item sedan"><%--<a href="portfolio_single_featured_video2.html">--%>
                <div class="work-image">
                    <img src="../car images/dezire qq.jpg" alt="Portfolio Item" />
                </div>
                <div class="work-caption font-alt">
                    <h3 class="work-title">Indulgence</h3>
                    <div class="work-descr">Dezire</div>
                </div>
            </a></li>
            <ul class="works-grid works-grid-gut works-grid-3 works-hover-w" id="Ul1">
                <li class="work-item premium suv"><%--<a href="portfolio_single_featured_image1.html">--%>
                    <div class="work-image">
                        <img src="../car images/s-cross qq.jpg" alt="Portfolio Item" />
                    </div>
                    <div class="work-caption font-alt">
                        <h3 class="work-title">Active</h3>
                        <div class="work-descr">S-Cross</div>
                    </div>
                </a></li>
                <li class="work-item hatchback"><%--<a href="portfolio_single_featured_image2.html">--%>
                    <div class="work-image">
                        <img src="../car images/swift2 qq.jpg" alt="Portfolio Item" />
                    </div>
                    <div class="work-caption font-alt">
                        <h3 class="work-title">Performance</h3>
                        <div class="work-descr">Swift</div>
                    </div>
                </a></li>
                <li class="work-item 4x4"><%--<a href="portfolio_single_featured_slider1.html">--%>
                    <div class="work-image">
                        <img src="../car images/gypsy qq.jpg" alt="Portfolio Item" />
                    </div>
                    <div class="work-caption font-alt">
                        <h3 class="work-title">4X4</h3>
                        <div class="work-descr">Gipsy</div>
                    </div>
                </a></li>
            </ul>
    </section>
    <section class="module-small bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-8 col-lg-6 col-lg-offset-2">
                    <div class="callout-text font-alt">
                        <h3 class="callout-title">Want to see more works?</h3>
                        <p>We are always open to interesting projects.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <div class="callout-btn-box"><a class="btn btn-w btn-round" href="Gallery.aspx">Lets view gallery</a></div>
                </div>
            </div>
        </div>
    </section>
    <section class="module" id="services">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h2 class="module-title font-alt">Our Services</h2>
                    <div class="module-subtitle font-serif">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</div>
                </div>
            </div>
            <div class="row multi-columns-row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="features-item">
                        <div class="features-icon"><span class="icon-lightbulb"></span></div>
                        <h3 class="features-title font-alt">Ideas and concepts</h3>
                        <p>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="features-item">
                        <div class="features-icon"><span class="icon-bike"></span></div>
                        <h3 class="features-title font-alt">Optimised for speed</h3>
                        <p>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="features-item">
                        <div class="features-icon"><span class="icon-tools"></span></div>
                        <h3 class="features-title font-alt">Designs &amp; interfaces</h3>
                        <p>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="features-item">
                        <div class="features-icon"><span class="icon-gears"></span></div>
                        <h3 class="features-title font-alt">Highly customizable</h3>
                        <p>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="features-item">
                        <div class="features-icon"><span class="icon-tools-2"></span></div>
                        <h3 class="features-title font-alt">Coding &amp; development</h3>
                        <p>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="features-item">
                        <div class="features-icon"><span class="icon-genius"></span></div>
                        <h3 class="features-title font-alt">Features &amp; plugins</h3>
                        <p>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="features-item">
                        <div class="features-icon"><span class="icon-mobile"></span></div>
                        <h3 class="features-title font-alt">Responsive design</h3>
                        <p>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="features-item">
                        <div class="features-icon"><span class="icon-lifesaver"></span></div>
                        <h3 class="features-title font-alt">Dedicated support</h3>
                        <p>Careful attention to detail and clean, well structured code ensures a smooth user experience for all your visitors.</p>
                    </div>
                </div>
            </div>
        </div>
        <hr class="divider-w">
        <section class="module">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h4 class="font-alt mb-30">Frequently Asked Questions</h4>
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title font-alt"><a data-toggle="collapse" data-parent="#accordion" href="#support1">About Saftey</a></h4>
                                </div>
                                <div class="panel-collapse collapse in" id="support1">
                                    <div class="panel-body">
                                        Muruthi gives the most higher priority to saftey,it follows all new saftey precutions and high security standerds and you are safe in a suzuki car.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title font-alt"><a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#support2">Design</a></h4>
                                </div>
                                <div class="panel-collapse collapse" id="support2">
                                    <div class="panel-body">
                                        We follows green technology we desiged products with todays need with a feature vision within a minimum cost that makes maruthi indias favroite
                                    </div>
                                </div>
                            </div>
            
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title font-alt"><a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#support4">Support and Service</a></h4>
                                </div>
                                <div class="panel-collapse collapse" id="support4">
                                    <div class="panel-body">
                                        We have 3100 exclusive showrooms and more than 2000 service hubs so need not worry about support and service.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <h4 class="font-alt mb-30">Our Expertises</h4>
                        <h6 class="font-alt"><span class="icon-tools-2"></span>Development
                        </h6>
                        <div class="progress">
                            <div class="progress-bar pb-dark" aria-valuenow="60" role="progressbar" aria-valuemin="0" aria-valuemax="100"><span class="font-alt"></span></div>
                        </div>
                        <h6 class="font-alt"><span class="icon-strategy"></span>Branding
                        </h6>
                        <div class="progress">
                            <div class="progress-bar pb-dark" aria-valuenow="80" role="progressbar" aria-valuemin="0" aria-valuemax="100"><span class="font-alt"></span></div>
                        </div>
                        <h6 class="font-alt"><span class="icon-target"></span>Marketing
                        </h6>
                        <div class="progress">
                            <div class="progress-bar pb-dark" aria-valuenow="50" role="progressbar" aria-valuemin="0" aria-valuemax="100"><span class="font-alt"></span></div>
                        </div>
                        <h6 class="font-alt"><span class=" icon-hotairballoon"></span>Saftey
                        </h6>
                        <div class="progress">
                            <div class="progress-bar pb-dark" aria-valuenow="90" role="progressbar" aria-valuemin="0" aria-valuemax="100"><span class="font-alt"></span></div>
                        </div>
                        <h6 class="font-alt"><span class="icon-pencil"></span>Designing
                        </h6>
                        <div class="progress">
                            <div class="progress-bar pb-dark" aria-valuenow="70" role="progressbar" aria-valuemin="0" aria-valuemax="100"><span class="font-alt"></span></div>
                        </div>
                        <h6 class="font-alt"><span class="icon-lifesaver"></span>Dedication
                        </h6>
                        <div class="progress">
                            <div class="progress-bar pb-dark" aria-valuenow="100" role="progressbar" aria-valuemin="0" aria-valuemax="100"><span class="font-alt"></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="module bg-dark-60 pt-0 pb-0 parallax-bg testimonial" data-background="../car%20images/s-cross.jpg">
            <div class="testimonials-slider pt-140 pb-140">
                <ul class="slides">
                    <li>
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="module-icon"><span class="icon-quote"></span></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <blockquote class="testimonial-text font-alt">I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.</blockquote>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4 col-sm-offset-4">
                                    <div class="testimonial-author">
                                        <div class="testimonial-caption font-alt">
                                            <div class="testimonial-title">Jack Woods</div>
                                            <div class="testimonial-descr">SomeCompany INC, CEO</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="module-icon"><span class="icon-quote"></span></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <blockquote class="testimonial-text font-alt">I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</blockquote>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4 col-sm-offset-4">
                                    <div class="testimonial-author">
                                        <div class="testimonial-caption font-alt">
                                            <div class="testimonial-title">Jim Stone</div>
                                            <div class="testimonial-descr">SomeCompany INC, CEO</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="module-icon"><span class="icon-quote"></span></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <blockquote class="testimonial-text font-alt">I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</blockquote>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4 col-sm-offset-4">
                                    <div class="testimonial-author">
                                        <div class="testimonial-caption font-alt">
                                            <div class="testimonial-title">Adele Snow</div>
                                            <div class="testimonial-descr">SomeCompany INC, CEO</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <section class="module" id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <h2 class="module-title font-alt">Contact us</h2>
                        <div class="module-subtitle font-serif"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-8">
                        <form id="contactForm" role="form" method="post" action="php/contact.php">
                            <div class="form-group">
                                <label class="sr-only" for="name">Name</label>
                                <input class="form-control" type="text" id="name" name="name" placeholder="Your Name*" required="required" data-validation-required-message="Please enter your name." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="email">Email</label>
                                <input class="form-control" type="email" id="email" name="email" placeholder="Your Email*" required="required" data-validation-required-message="Please enter your email address." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="7" id="message" name="message" placeholder="Your Message*" required="required" data-validation-required-message="Please enter your message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-block btn-round btn-d" id="cfsubmit" type="submit">Submit</button>
                            </div>
                        </form>
                        <div class="ajax-response font-alt" id="contactFormResponse"></div>
                    </div>
                    <div class="col-sm-4">
                        <div class="alt-features-item mt-0">
                            <div class="alt-features-icon"><span class="icon-megaphone"></span></div>
                            <h3 class="alt-features-title font-alt">Where to meet</h3>
                            KEK Tower opp Police Headquarters<br />
                            Vellyambalam-Vazhuthacaud Rd,<br />
                            Thriuvananthapuram,Kerala
                        </div>
                        <div class="alt-features-item mt-xs-60">
                            <div class="alt-features-icon"><span class="icon-map"></span></div>
                            <h3 class="alt-features-title font-alt">Say Hello</h3>
                            Email: contact@maruti.co.in<br />
                            Phone: 1800 102 1800
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</asp:Content>

