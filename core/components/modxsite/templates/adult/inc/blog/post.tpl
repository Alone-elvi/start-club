{$params=[
"where"=> ["id" => $modx->resource->id] ,
'showhidden' => 1,
'showunpublished' => 1,
"cache"     => 1,
"class_key" => 1,
"current" => 1,
"summary" => 1
]}
{$options = "&q=100&w=780&h=260&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{$object = $result.object}
{$image = $object.image|default:$object.imageDefault}
{$src = $modx->runSnippet('phpthumbof', [
"input" => $image,
"options"   => $options
])}
<section>
    <div class="container mt-30 mb-30 pt-30 pb-30">
        <div class="row">
            <div class="col-md-12 "> <!-- col-md-offset-2 -->
                <div class="blog-posts single-post">
                    <article class="post clearfix mb-0">
                        <div class="entry-header">
                            <div class="post-thumb thumb">
                                <img src="{$src}" alt="" class="img-responsive img-fullwidth">
                            </div>
                        </div>
                        <div class="entry-content">
                            <div class="entry-title pt-0">
                            </div>
                            <div class="entry-meta mb-20">
                                <ul class="list-inline">
                                    <li>Опубликованно: <span class="text-theme-colored"> {$object.publishedon|date_format:"%D"}</span></li>
                                </ul>
                            </div>
                            <div class="lead text">{$object.content}</div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</section>
