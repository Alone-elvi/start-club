{$params = [
"limit"     => 6,
"parent"      => 159,
"showhidden" => 1,
"showunpublished" => 0,
"class_key" => 1,
"cache"     => 1
]}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

<div class="mt-0 mb-0">
    <h5 class="pull-left mt-10 mr-20 text-white">Социальные сети:</h5>

    <ul class="styled-icons icon-circled m-0">
        {foreach $result.object as $object}
            <li class="text-white data-bg-color="#3A5795"">{$object.introtext}</li>
        {/foreach}
    </ul>
</div>

