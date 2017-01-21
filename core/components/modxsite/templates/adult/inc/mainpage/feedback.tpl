{$params=[
"where"=> ["id" => 166],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"class_key" => 1
]}

{$options = "&q=100&w=400&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{$image = $result.object.image|default:$result.object.imageDefault}
{$src = $modx->runSnippet('phpthumbof', [
"input" => $image,
"options"   => $options
])}
{$objSl = json_decode($result.object.tvs.slider.value, 1)}
<section id="join2us" class="divider bg-lighter">
    <div class="container pb-50">
        <div class="section-title">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <h2 class="text-uppercase title">Присоединиться<span class="text-black font-weight-300"></span></h2>
                    <!--<p class="text-uppercase letter-space-1">JOIN OUR TRAINING CLUB AND RISE TO A NEW CHALLENGE</p>-->
                </div>
            </div>
        </div>
        <div class="section-content">
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <div class="contact-wrapper">

                        <!-- Contact Form -->
                            <div class="row">
                                <div class="col-sm-8">
                                    {include file="inc/forms/feedback_adult_mainpage.tpl"}
                                </div>
                                <div class="col-sm-4">
                                    <h3 class="mt-0 text-theme-colored font-weight-300">Контактаня информация</h3>
                                    <!--<p>Integer tincidunt  Cras dapibus Vivamus elementum semper nisi Aenean vulputate eleifend tellus.</p>-->

                                    <ul class="mt-30">
                                        <li><i class="fa fa-phone mb-20 text-theme-colored mr-5 font-20"></i>{include file='inc/contacts/phone.tpl'}</li>
                                        <li><i class="fa fa-map-marker mb-20 text-theme-colored mr-5 font-20"></i>{include file='inc/contacts/address.tpl'}</li>
                                        <li><i class="fa fa-envelope mb-20 text-theme-colored mr-5 font-20"></i>{include file='inc/contacts/email.tpl'}</li>
                                        <!--<li><i class="fa fa-globe mb-20 text-theme-colored mr-5 font-20"></i> www.yourWebside.com</li>-->
                                    </ul>
                                </div>
                            </div>
                        <!-- Contact Form Validation-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
