{$params=[
"where"=> ["id" => 167],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"class_key" => 1
]}

{$options = "&q=100&w=800&h=800&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

{$objSl = json_decode($result.object.tvs.slider.value, 1)}
<section id="{$result.object.id}" class="">
    <div class="container-fluid pb-0">
        <div class="section-title text-center">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="text-uppercase title">{$result.object.pagetitle} <span
                                class="text-black font-weight-300"></span></h2>
                    <p class="text-uppercase letter-space-4"><!--Join our Health Zone and be healthy.--></p>
                </div>
            </div>
        </div>
        <div class="section-content">
            <div class="row ml-md-0 multi-row-clearfix">
                {$len = count($objSl)}
                {foreach $objSl as $object}
                {$image = "assets/images/"|cat:$object.image|default:$object.imageDefault}
                {$src = $modx->runSnippet('phpthumbof', [
                "input" => $image,
                "options"   => $options
                ])}
                {if len>=4}
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 p-0 pr-5 pb-5">
                    {else}
                    <div class="col-xs-12 col-sm-6 col-md-{12/$len} col-lg-{12/$len} p-0 pr-5 pb-5">
                        {/if}
                        <div class="trainer-item">
                            <div class="trainer-thumb"><img src="{$src}" alt=""
                                                            class="img-fullwidth img-responsive"></div>
                            <div class="trainer-info">
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
</section>
