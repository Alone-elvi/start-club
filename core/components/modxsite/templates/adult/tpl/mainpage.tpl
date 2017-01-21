{extends "layout.tpl"}
{block name="styles" append}
    <!-- Revolution Slider 5.x CSS settings -->
    <link href="{$pre_template_url}js/revolution-slider/css/settings.css" rel="stylesheet" type="text/css"/>
    <link href="{$pre_template_url}js/revolution-slider/css/layers.css" rel="stylesheet" type="text/css"/>
    <link href="{$pre_template_url}js/revolution-slider/css/navigation.css" rel="stylesheet" type="text/css"/>
    <!-- Revolution Slider 5.x SCRIPTS -->
    <script src="{$pre_template_url}js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
    <script src="{$pre_template_url}js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
    <!-- Revolution Slider 5.x EXTENSIONS  -->
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript"
            src="{$pre_template_url}js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
{/block}
{block name=header}
    <!-- Header -->
    <header id="header" class="header">
        {*include file="inc\adult\menu\menu.tpl"*}
        {include file="inc\menu\menu.tpl"}
    </header>
{/block}
{block name=content}
    <!-- Start main-content -->
    <div class="main-content">
        {include file="inc/mainpage/slider.tpl"}
        <!-- Section: About -->
        {include file="inc/mainpage/about.tpl"}
        <!-- divider: services -->
        {include file="inc/mainpage/features.tpl"}
        <!-- Section: trainer -->
        {*include file="inc/mainpage/trainers.tpl"*}
        <!-- Section: tranning Class -->
        {include file="inc/mainpage/trainingclass.tpl"}
        <!-- Section: Pricing -->
        {include file="inc/mainpage/price.tpl"}
        <!-- Section Contact -->
        <!-- Contact Form -->
        {include file="inc/mainpage/feedback.tpl"}
    </div>
    <!-- end main-content -->
{/block}
