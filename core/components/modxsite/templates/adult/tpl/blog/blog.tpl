{extends file="layout.tpl"}


{block name=params append}
{$params =  [
"parent" => $modx->resource->id,
'showhidden' => 1,
'showunpublished' => 1,
"limit" => 12,
"cache"     => 1,
"class_key" => 1,
"page"      => (int)$smarty.get.page
]}
    {/block}
{block name="content"}
    {*processor action="web/getdata" ns="modxsite" *}
    {$processor = "web/resources/getdata"}
    {$ns = "modxsite"}
    {processor action=$processor ns=$ns params=$params assign=result}
    {include file = "inc/blog/blog.tpl"}
{/block}

