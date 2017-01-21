<div class="main-content">
    <!-- Divider: Contact -->
    <section >
        <div class="container">
            <div class="row pt-30">
                {foreach $objSl as $obj}
                    {$image = "assets/images/"|cat:$obj.image|default:$obj.imageDefault}
                    {$src = $modx->runSnippet('phpthumbof', [
                    "input" => $image,
                    "options"   => $options
                    ])}
                    <div class="separator">
                        <span>{$obj.title}</span>
                    </div>
                    <div class="col-md-4">
                        <div class="row">

                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="icon-box left media bg-deep p-30 mb-20">
                                    <a class="media-left pull-left"
                                       href="#"> <i class="pe-7s-ticket text-theme-colored"></i></a>
                                    <div class="media-body"><strong>Как называется:</strong>
                                        <p>{$obj.title}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="icon-box left media bg-deep p-30 mb-20"><a class="media-left pull-left"
                                                                                       href="#"> <i
                                                class="pe-7s-map-2 text-theme-colored"></i></a>
                                    <div class="media-body"><strong>Где находится:</strong>
                                        <p>{$obj.note}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-12">
                                <div class="icon-box left media bg-deep p-30 mb-20"><a class="media-left pull-left"
                                                                                       href="#"> <i
                                                class="pe-7s-call text-theme-colored"></i></a>
                                    <div class="media-body"><strong>Телефон:</strong>
                                        <p>{if $obj.alt}
                                                {$obj.alt}
                                            {else}
                                                <a href="tel:{include file='inc/contacts/phone.tpl'}">{include file='inc/contacts/phone.tpl'}</a>
                                            {/if}
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-12">
                                <div class="icon-box left media bg-deep p-30 mb-20"><a class="media-left pull-left"
                                                                                       href="#"> <i
                                                class="pe-7s-mail text-theme-colored"></i></a>
                                    <div class="media-body"><strong>E-MAIL:</strong>
                                        <p>{if $obj.img_title}
                                                {$obj.img_title}
                                            {else}
                                                {include file='inc/contacts/email.tpl'}
                                            {/if}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="col-xs-12 col-sm-6 col-md-12">
                            <h5 class="mt-0 mb-10">Карта:</h5>
                            <!-- Contact Form -->
                            {$obj.description}
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-12 ">
                            <h5 class="mt-10 mb-10">Как выглядит:</h5>
                            <img src="{$src}" alt="" class="img-fullwidth img-responsive">
                        </div>

                    </div>
                    <div class="divider">
                {/foreach}
            </div>
        </div>
    </section>
</div>