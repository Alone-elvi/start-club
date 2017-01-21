{* Главное меню *}
{$params=[
"parent" => 0,
'showhidden' => 0,
'showunpublished' => 0,
"cache"     => 1,
"class_key" => 1,
"where" =>  ["id:not in"=>[2, 78, 79, 80, 82, 85, 104, 110, 111, 112, 113, 152, 153, 154]]
]}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

<!-- Header -->
<header id="header" class="header">
    <div class="header-top sm-text-center bg-theme-colored">
        <div class="container">
            <div class="row">
                <div class="col-md-0">
                </div>
                <div class="col-md-10">
                    <div class="widget m-0 mt-5 no-border">
                        <ul class="list-inline text-right sm-text-center">
                            <li class="pl-10 pr-10 mb-0 pb-0">
                                <div class="header-widget text-white"><i class="fa fa-phone"></i>
                                    <a class="text-white"
                                       href="tel:{include file='inc/contacts/phone.tpl'}">{include file="inc/contacts/phone.tpl"}
                                </div>
                            </li>
                            <li class="pl-10 pr-10 mb-0 pb-0">
                                <div class="header-widget text-white"><i class="fa fa-envelope-o"></i>
                                    <a href="mailto:{include file='inc/contacts/email-text.tpl'}"
                                       class="text-white">{include file="inc/contacts/email-text.tpl"}</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 text-right flip sm-text-center">

                    <div class="widget m-0">
                        {include file="inc/common/socialfollow_bottom.tpl"}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-nav">
        <div class="header-nav-wrapper navbar-scrolltofixed bg-lighter ">
            <div class="container">
                <nav id="menuzord-right" class="menuzord orange no-bg">
                    <a class="menuzord-brand pull-left flip" href="{$modx->getOption('base_path')}">
                        <img src="{$pre_template_url}images/site/logos/logo-adult.png" alt="">
                    </a>
                    <ul class="menuzord-menu">

                        <li class="active">
                            <a href="{$modx->getOption('(base_path')}">Домой</a>
                        </li>
                        {foreach $result.object as $object}
                            <li>
                                <a href="{$object.uri}" title="{$object.longtitle}"
                                   alt="{$object.pagetitle}">{$object.pagetitle}</a>
                            </li>
                        {/foreach}
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>


<!-- Section: inner-header -->

{if $modx->resource->id != $modx->getOption('site_start')}
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-parallax-ratio="0.7"
             data-bg-img="images/bg/bg1.jpg">
        <div class="container pt-100 pb-50">
            <!-- Section Content -->
            <div class="section-content pt-100">
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="title text-white">{$modx->resource->pagetitle}</h3>
                        {block name=Breadcrumbs}
                            {snippet name="Breadcrumbs@Breadcrumbs-adult"}
                        {/block}
                    </div>
                </div>
            </div>
        </div>
    </section>
{/if}