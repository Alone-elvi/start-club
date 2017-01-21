{$params=[
"where"=> ["id" => 169],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"class_key" => 1
]}

{$options = "&q=100&w=284&h=284&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

{$objSl = json_decode($result.object.tvs.multi_images.value, 1)}

<section id="price" data-bg-img="images/pattern/p8.png">
    <div class="container">
        <div class="section-title text-center">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="title text-uppercase">{$result.object.pagetitle}<span
                                class="text-black font-weight-300"></span></h2>
                    <!--<p class="text-uppercase letter-space-4">Join our Health Zone and be healthy.</p>-->
                </div>
            </div>
        </div>
        <div class="section-content">
            <div class="row">
                {$len = count($objSl)}
                {foreach $objSl as $object}
                {$image = "assets/images/"|cat:$object.image|default:$object.imageDefault}
                {$src = $modx->runSnippet('phpthumbof', [
                "input" => $image,
                "options"   => $options
                ])}
                {if len>=4}
                <div class="col-xs-12 col-sm-4 col-md-4 hvr-float-shadow mb-sm-30">
                {else}
                    <div class="col-xs-12 col-sm-{12/len} col-md-{12/len} hvr-float-shadow mb-sm-30">
                {/if}
                    <div class="pricing-table style1 bg-white-light border-2px border-theme-colored text-center">
                        <div class="pt-40 pb-60">
                            <h3 class="package-type mt-40">{$object.title}</h3>
                            <p></p>
                            <h2 class="price text-theme-colored mb-10 font-weight-300 font-48">{$object.description}<span
                                        class="font-40">руб.</span></h2>
                            <ul class="table-list bg-lightest pl-0 mb-20">
                                <li>{$object.note}</li>
                            </ul>
                            <a class="btn btn-colored btn-theme-colored text-uppercase" href="#join2us">Присоединиться</a><br>
                        </div>
                    </div>
                </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>
