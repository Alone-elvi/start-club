{$params = [
"limit"     => 6,
"parent"      => 159,
"showhidden" => 1,
"showunpublished" => 0,
"class_key" => 1,
"cache"     => 1
]}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
<ul class="styled-icons icon-dark icon-circled icon-theme-colored icon-sm">

{foreach $result.object as $object}
    <li class="mb-0 pb-0">{$object.introtext}</li>
{/foreach}
</ul>
