{extends file="layout.tpl"}
{block name=params}
    {$params=[
    "where"=> ["id" => $modx->resource->id],
    'current' => 1,
    'showhidden' => 1,
    'showunpublished' => 1,
    "class_key" => 1
    ]}

    {$options = "&q=100&w=300&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}
    {processor action="web/resources/getdata" ns="modxsite" params=$params assign=result_g}

    {$objSl = json_decode($result_g.object.tvs.multi_images.value, 1)}
{/block}
{block name=content}
    {*field name=content*}
    {include file="inc/contacts/pools.tpl"}

{/block}