{$params=[
"where"=> ["id" => 166],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"class_key" => 1
]}

{$options = "&q=100&w=400&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{$image = $result.object.image|default:$result.object.imageDefault}
{$src = $modx->runSnippet('phpthumbof', [
"input" => $image,
"options"   => $options
])}
{$objSl = json_decode($result.object.tvs.multi_images.value, 1)}
<section id="{$result.object.id}" data-bg-img="assets/images/site/backgrounds/diagonal_waves.png">
    <div class="container pb-0">
        <div class="bg-lighter bg-img-right-top sm-no-bg mt-sm-0" data-bg-img="{$src}">
            <div class="row">
                <div class="col-md-6 col-md-offset-1 p-sm-40 pt-sm-0 pt-50 pb-20">
                    <h2 class="title text-uppercase text-theme-colored">{$result.object.pagetitle} <span
                                class="text-black font-weight-300"></span></h2>
                    <p>{$result.object.content}</p>
                </div>
                <div class="row">
                    {foreach $objSl as $object}
                        <div class="col-md-6 col-md-offset-0 p-sm-40 pt-sm-0 pt-50 pb-20">
                            <div class="icon-box text-left flip sm-text-center p-0 mt-20 mb-25 mr-30 ">
                                <a href="#price"
                                   class="icon mt-20 mb-30 mr-30 ml-30 pull-left flip sm-pull-none bg-theme-colored rotate">
                                    <i class="flaticon-gym-dumbbell-with-weights-outline text-white no-rotate"></i>
                                </a>
                                <div>
                                    <div>
                                        <h5 class="icon-box-title mt-15 mb-10"><strong></strong></h5>
                                        <p>{$object.title}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</section>
