{$params=[
"where"=> ["id" => 168],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"class_key" => 1
]}

{$options = "&q=100&w=400&h=400&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

{$objSl = json_decode($result.object.tvs.multi_images.value, 1)}
<section id="{$result.object.id}" data-bg-img="assets/images/site/backgrounds/diagonal_waves.png">
    <div class="container">
        <div class="section-title text-center">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="title text-uppercase">{$result.object.pagetitle} <span
                                class="text-black font-weight-300"></span></h2>
                    <!--<p class="text-uppercase letter-space-4">Join our Health Zone and be healthy.</p>-->
                </div>
            </div>
        </div>
        <div class="row mtli-row-clearfix">
            <div class="col-md-9 col-md-offset-3">
                <div class="training-classes-carousel" data-dots="false">
                    {foreach $objSl as $object}
                    {$image = "assets/images/"|cat:$object.image|default:$object.imageDefault}
                    {$src = $modx->runSnippet('phpthumbof', [
                    "input" => $image,
                    "options"   => $options
                    ])}

                    <div class="item">
                        <div class="class-item box-hover-effect effect1 mb-md-30 bg-lighter">
                            <div class="thumb mb-20"><img alt="featured project"
                                                          src="{$src}"
                                                          class="img-responsive img-fullwidth">
                            </div>
                            <div class="content text-left flip p-25 pt-0">
                                <h4 class="text-uppercase font-weight-800 line-bottom">{$object.title}</h4>
                                <p>{$object.note}</p>
                                <p>{$object.description}</p>
                                <!--<a href="#" class="btn-read-more btn-sm">Read More</a>-->
                            </div>
                        </div>
                    </div>
                    {/foreach}
                </div>
            </div>
            <div class="text-center"><p>Между занятиями отводится 10 минутный перерыв на переодевание.</p></div>
        </div>
    </div>
</section>
