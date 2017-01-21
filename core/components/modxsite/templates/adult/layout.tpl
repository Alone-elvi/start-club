{extends "[main]layout.tpl"}
<!--[if (gte IE 9)|!(IE)]><!-->
<!DOCTYPE html>
<html lang=en-US xmlns="http://www.w3.org/1999/html">
<!--<![endif]-->
<head>
</head>
{block name=meta}

    {* Заголовок специально в блок загнан, чтобы в разных шаблонах его можно было бы переопределить *}
    <title>{block name="title"}{$modx->resource->longtitle|default:$modx->resource->pagetitle}{/block}</title>
    {snippet name="MetaX@MetaX"}
    <meta name="yandex-verification" content="3d666598fc9232ae" />
{/block}
{block name=params}
{/block}
{block name=bootstrap}
{/block}

{block name=styles}
    <!-- Stylesheet -->
    <link href="{$pre_template_url}css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="{$pre_template_url}css/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <link href="{$pre_template_url}css/animate.css" rel="stylesheet" type="text/css">
    <link href="{$pre_template_url}css/css-plugin-collections.css" rel="stylesheet"/>
    <!-- CSS | menuzord megamenu skins -->
    <link id="menuzord-menu-skins" href="{$pre_template_url}css/menuzord-skins/menuzord-boxed.css"
          rel="stylesheet"/>
    <!-- CSS | Main style file -->
    <link href="{$pre_template_url}css/style-main.css" rel="stylesheet" type="text/css">
    <!-- CSS | Theme Color -->
    <link href="{$pre_template_url}css/colors/theme-skin-custom.css" rel="stylesheet" type="text/css">
    <!-- CSS | Preloader Styles -->
    <link href="{$pre_template_url}css/preloader.css" rel="stylesheet" type="text/css">
    <!-- CSS | Custom Margin Padding Collection -->
    <link href="{$pre_template_url}css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
    <!-- CSS | Responsive media queries -->
    <link href="{$pre_template_url}css/responsive.css" rel="stylesheet" type="text/css">
    <link href="{$pre_template_url}css/custom-style.css" rel="stylesheet" type="text/css">
    <!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
    <!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->
    <!-- JS | Custom script for all pages -->
    <script src="{$pre_template_url}js/jquery-2.1.4.min.js"></script>
    <!-- external javascripts -->
    <!-- JS | jquery plugin collection for this theme -->
    <script src="{$pre_template_url}js/jquery-plugin-collection.js"></script>
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="../../../../../https@oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="../../../../../https@oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->    <![endif]-->
{/block}
{block name=pagetitle}
{/block}
{block name=body}
    <body class="">
    <div id="wrapper">
        <!-- preloader -->
        <!--<div id="preloader">
            <div id="spinner">
                <img src="images/preloaders/1.gif" alt="">
            </div>
            <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div>
        </div>-->
        {block name=header}
            <!-- Header -->
            <header id="header" class="header">

                {include file="inc/menu/menu.tpl"}
            </header>
        {/block}
        {block name=content}
        {/block}
        <!--Footer-->
        {include file="inc/footer/footer.tpl"}

    </div>
    <!-- end wrapper -->

    <!-- Footer Scripts -->
    {block name=shopmodx_scripts}
        <script src="{$pre_template_url}js/jquery-ui.min.js"></script>

        <script src="{$pre_template_url}js/bootstrap.min.js"></script>
        <script src="{$pre_template_url}js/custom.js"></script>

        <script src="{$pre_template_url}js/custom.js"></script>

        <!-- Metrics -->
        {include file="common\metrics.tpl"}
        <!-- End Metrics -->

    {/block}
    </body>
{/block}
</html>