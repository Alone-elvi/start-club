{$params=[
"where"=> ["id" => 165],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"cache"     => 1,
"class_key" => 1
]}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{$options = "&q=100&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}
{$object = $result.object}
<section id="{$object.id}">
    <div class="container">
        <div class="section-content">
            <div class="row">
                <div class="col-md-8 mb-sm-30">
                    <h3 class="text-uppercase font-28 letter-space-3 mt-0">{$object.pagetitle}</h3>
                    <!--<span class="text-theme-colored">Are</span></h3>-->
                    <h5 class="text-uppercase font-weight-400"></h5>
                    <div class="row mb-30">
                        <div class="col-md-12">
                            {$object.content}
                        </div>
                        <!--<a href="#" class="btn btn-theme-colored btn-flat text-uppercase">View More</a>-->
                        <a href="#price" class="btn btn-theme-colored btn-flat text-uppercase ml-20">Присоединиться</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="thumb">
                        {$image = $object.image|default:$object.imageDefault}
                        {$src = $modx->runSnippet('phpthumbof', [
                        "input" => $image,
                        "options"   => $options
                        ])}
                        <img class="img-fullwidth" src="{$src}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

