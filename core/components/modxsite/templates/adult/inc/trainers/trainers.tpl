<link rel=stylesheet href="{$pre_template_url}fancyBox/source/jquery.fancybox.css"/>

{$params=[
"where"=> ["id" => 167],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"class_key" => 1
]}

{$options = "&q=100&w=800&h=800&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

{$objSl = json_decode($result.object.tvs.multi_images.value, 1)}

<!-- Section: trainer -->
<section id="trainer">
    <div class="container">
        <div class="section-content">
            <div class="row ml-md-0 multi-row-clearfix">
                {$len = count($objSl)}
                {if len>=3}
                    {$len = 3}
                {/if}
                {foreach $objSl as $object}
                    {$image = "assets/images/"|cat:$object.image|default:$object.imageDefault}
                    {$src = $modx->runSnippet('phpthumbof', [
                    "input" => $image,
                    "options"   => $options
                    ])}
                    <div class="col-xs-12 col-sm-6 col-md-{12/$len} col-lg-{12/$len} p-0 pr-5 pb-5">
                        <div class="trainer-item">
                            <div class="trainer-thumb">
                                <img src="{$src}" alt="" class="img-fullwidth img-responsive">
                            </div>
                            <div class="trainer-info" data-plugin="fancybox" id="{$object.MIGX_id}">
                                <!--<div class="social-network">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-facebook bg-theme-colored"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter bg-theme-colored"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble bg-theme-colored"></i></a></li>
                                    </ul>
                                </div>-->
                                <div class="trainer-biography">
                                    <h3 class="text-white">{$object.title}</h3>
                                    <h5 class="text-white">{$object.note}</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
    {foreach $objSl as $object}
        <div id="popup_{$object.MIGX_id}" class="fancybox-effects-a text-justify" style="display: none; color: #000009">
            <div class="font-icon-list">
                <div class="font-icon-detail">
                    <span class="pe-7s-gym icon-colored"></span>
                </div>
            </div>
            <h3 class="text">{$object.title}</h3>
            <h5 class="text">{$object.note}</h5>
            <p>{$object.description}</p>
        </div>
    {/foreach}
</section>
<script src='{$pre_template_url}fancyBox/source/jquery.fancybox.js'></script>

<script>
    $(document).ready(function () {
        $('.trainer-info').click(function () {
            var id_click = $(this).attr('id');
            var str_click = "#" + "popup_" + $(this).attr('id');
            $.fancybox({
                'padding': 50,
                'maxWidth': 610,
                'height': 610,
                'type': 'iframe',
                'content': $(str_click).html()
            });
        })
    });

</script>