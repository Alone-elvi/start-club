{$params=[
"where"=> ["id" => $object.id],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"class_key" => 1
]}

{$options = "&q=100&w=800&h=800&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result_g}

{$objSl = json_decode($result_g.object.tvs.multi_images.value, 1)}

<!-- Portfolio Item Start -->

<div class="portfolio-item {$object.id}">
    <div class="thumb">
        <div class="flexslider-wrapper">
            <div class="flexslider">
                <ul class="slides">
                    {foreach $objSl as $obj}
                        {$image = "assets/images/"|cat:$obj.image|default:$obj.imageDefault}
                        {$src = $modx->runSnippet('phpthumbof', [
                        "input" => $image,
                        "options"   => $options
                        ])}

                        <li>
                        <a href="{$src}" title="{$obj.description}">
                            <img src="{$src}" alt="">
                        </a>
                    </li>
                    {/foreach}
                </ul>
            </div>
        </div>
        <div class="overlay-shade"></div>
        <div class="icons-holder">
            <div class="icons-holder-inner">
                <div class="styled-icons icon-sm icon-dark icon-circled icon-theme-colored">
                    <a href="#"><i class="fa fa-picture-o"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Portfolio Item End -->
