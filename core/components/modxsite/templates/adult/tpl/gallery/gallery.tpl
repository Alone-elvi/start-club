{extends file="layout.tpl"}
{block name=params}
    {$params = [
    "parent"      => $modx->resource->id,
    "showhidden" => 1,
    "showunpublished" => 1,
    "class_key" => 1,
    "cache"     => 1
    ]}
{/block}
{block name=content}
    {processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
    <section>
        <div class="container">
            <div class="section-content">
                <div class="row">
                    <div class="col-md-12">
                        <!-- Portfolio Filter -->
                        <div class="portfolio-filter font-alt align-center mb-6 0">
                            <a href="#" class="active" data-filter="*">Все</a>
                            {foreach $result.object as $object}
                                <a href="#{$object.id}" class="" data-filter=".{$object.id}">{$object.pagetitle}</a>
                            {/foreach}
                        </div>
                        <div id="grid" class="portfolio-gallery masonry grid-4 gutter clearfix">

                            {foreach $result.object as $object}
                                {include file = "inc/gallery/gallery_outer.tpl"}
                            {/foreach}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
{/block}