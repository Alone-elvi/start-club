{$options = "&q=100&w=780&h=260&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}
<section>
    <div class="container mt-30 mb-30 pt-150 pb-30">
        <div class="row ">
            <div class="col-md-10 col-md-offset-1">
                <div class="blog-posts">
                    <div class="col-md-12">
                        <div class="row list-dashed">
                            {foreach $result.object as $object}
                                {$image = $object.image|default:$object.imageDefault}
                                {$src = $modx->runSnippet('phpthumbof', [
                                "input" => $image,
                                "options"   => $options
                                ])}
                                <article class="post mb-50 pb-30">
                                    <div class="entry-header">
                                        <div class="post-thumb">
                                            <img alt="" src="{$src}"
                                                 class="img-fullwidth img-responsive">
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="entry-content">
                                        <h5 class="entry-title text-uppercase mt-0"><a href="{$object.uri}">{$object.pagetitle}</a>
                                        </h5>
                                        <ul class="list-inline font-12 mb-20 mt-10">
                                            <li>
                                                <i class="fa fa-calendar mr-5"></i> {$object.publishedon|date_format:"%D"}
                                            </li>
                                        </ul>
                                        {$object.summary}
                                        <ul class="list-inline like-comment pull-left flip font-12">
                                        </ul>
                                        <a class="pull-right flip text-gray font-13" href="{$object.uri}"><i
                                                    class="fa fa-angle-double-right text-theme-colored"></i> Читать
                                            дальше</a>
                                        <div class="clearfix"></div>
                                    </div>
                                </article>
                            {/foreach}
                        </div>
                    </div>
                    <div class="col-md-12">
                        {include file = "common/pagination/pagination.tpl"}

                        <!--<nav>

                            <ul class="pagination theme-colored">
                                <li><a aria-label="Previous" href="#"> <span aria-hidden="true">«</span> </a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">...</a></li>
                                <li><a aria-label="Next" href="#"> <span aria-hidden="true">»</span> </a></li>
                            </ul>
                        </nav>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
