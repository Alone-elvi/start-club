<!-- Footer -->
<footer id="footer" class="footer divider parallax layer-overlay overlay-dark"
        data-bg-img="images/gym/bg/bg6.jpg"
        data-parallax-ratio="0.7">
    <div class="container pb-60 pt-0">
        <div class="row text-center">
            <div class="col-md-6 col-md-offset-3">
                <div class="widget mb-50"><img src="{$pre_template_url}images/site/logos/Logo_Start_Footer.png" alt="Школа Старт"  class="mt-10 mb-20" height="150">
                    <p class="font-12">Дарим отличную форму и настроение.</p>
                </div>
            </div>
        </div>
        <div class="row border-bottom-theme-colored">
            <div class="col-sm-6 col-md-3">
                <!--<div class="widget dark">
                    <h5 class="widget-title line-bottom">Quick Contact</h5>
                    <form method="post" action="includes/quickcontact.php" class="quick-contact-form"
                          name="footer_quick_contact_form" id="quick_contact_form2" novalidate="novalidate">
                        <div class="form-group">
                            <input type="text" placeholder="Enter Email" required="" class="form-control"
                                   name="form_email">
                        </div>
                        <div class="form-group">
                                <textarea rows="3" placeholder="Enter Message" required="" class="form-control"
                                          name="form_message"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="hidden" value="" class="form-control" name="form_botcheck">
                            <button data-loading-text="Please wait..."
                                    class="btn btn-default btn-transparent btn-xs btn-flat mt-0" type="submit">
                                Send
                                Message
                            </button>
                        </div>
                    </form>
                </div>-->
            </div>
            <div class="col-sm-6 col-md-3">
                <!--<div class="widget dark">
                    <h5 class="widget-title line-bottom">Twitter Feed</h5>
                    <div class="twitter-feed list-border clearfix" data-username="Envato"></div>
                </div>-->
            </div>
            <div class="col-sm-6 col-md-3">
                <!--<div class="widget dark">
                    <h5 class="widget-title line-bottom">Tags</h5>
                    <div class="tags">
                        <a href="#">Body building</a>
                        <a href="#">Fitnees</a>
                        <a href="#">Weight lifting</a>
                        <a href="#">Classes</a>
                        <a href="#">mountain</a>
                        <a href="#">Gym</a>
                        <a href="#">Coaches</a>
                        <a href="#">Trainers</a>
                        <a href="#">Workout</a>
                        <a href="#">Yoga</a>
                        <a href="#">Juice</a>
                        <a href="#">Body combat</a>
                        <a href="#">Relax</a>
                        <a href="#">Fruit</a>
                    </div>
                </div>-->
            </div>
            <div class="col-sm-6 col-md-3">
                <!--<div class="widget dark">
                    <h5 class="widget-title line-bottom">Opening Hours</h5>
                    <div class="opening-hours">
                        <ul class="list-border">
                            <li class="clearfix"><span> Friday - Saturday :  </span>
                                <div class="value pull-right"> 10.00 am - 6.00 pm</div>
                            </li>
                            <li class="clearfix"><span> Monday - Thusday :</span>
                                <div class="value pull-right"> 8.00 am - 9.00 pm</div>
                            </li>
                            <li class="clearfix"><span> Sunday : </span>
                                <div class="value pull-right"> Closed</div>
                            </li>
                            <li class="clearfix"><span> Sunday : </span>
                                <div class="value pull-right"> Closed</div>
                            </li>
                        </ul>
                    </div>
                </div>-->
            </div>
        </div>
        <div class="row mt-10">
            <!--<div class="col-md-5">
                <h4 class="text-white">Subscribe Us</h4>
                <form id="mailchimp-subscription-form-footer" class="newsletter-form mt-20">
                    <div class="input-group">
                        <input type="email" value="" name="EMAIL" placeholder="Your Email"
                               class="form-control input-lg font-16" data-height="45px" id="mce-EMAIL-footer"
                               style="height: 45px;">
                        <span class="input-group-btn">
                <button data-height="45px" class="btn btn-colored btn-theme-colored btn-xs m-0 font-14" type="submit">Subscribe</button>
              </span>
                    </div>
                </form>
                <!-- Mailchimp Subscription Form Validation-->

            <!--</div>-->
            <div class="col-md-4 col-md-offset-3 mt-20">
                <div class="pull-right">
                    {*include file='inc/adult/footer/socialfollow.tpl'*}
                    {include file='inc/footer/socialfollow.tpl'}
                </div>
                <div class="pull-left">
                    <!--Телефон должен быть тут, когда есть социальные сети-->
                    <h5 class="text-white text-center">Позвоните нам</h5>
                    <h4 class="text-gray text-center">{include file="inc/contacts/phone.tpl"}</h4>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid copy-right p-20 bg-black-333">
        <div class="row text-center">
            <div class="col-md-12">
                <p class="font-11 text-white m-0">Copyright &copy; {$smarty.now|date_format:"%Y"} Alone-elvi</p>
            </div>
        </div>
    </div>
</footer>
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
