{$params=[
"where"=> ["id" => 164],
'current' => 1,
'showhidden' => 1,
'showunpublished' => 1,
"class_key" => 1
]}

{$options = "&q=100&zc=1&fltr=wmi|/assets/components/modxsite/templates/start-school/images/site/logos/watermark.png"}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{$objSl = json_decode($result.object.tvs.multi_images.value, 1)}

<!-- Section: home -->
<section id="home" class="divider">
    <div class="container-fluid p-0">

        <!-- Slider Revolution Start -->
        <div class="rev_slider_wrapper">
            <div class="rev_slider" data-version="5.0">
                <ul>
                    {$i = 0}
                    {foreach $objSl as $object}
                        {$strarr = explode(",", $object.description)}
                        {$i = $i + 1}
                        {$image = "assets/images/"|cat:$object.image|default:$object.imageDefault}
                        {$src = $modx->runSnippet('phpthumbof', [
                        "input" => $image,
                        "options"   => $options
                        ])}

                        <li data-index="rs-{$i}" data-transition="zoomout" data-slotamount="default"
                            data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut"
                            data-masterspeed="2000"
                            data-thumb="{$src}" data-rotate="0" data-fstransition="fade"
                            data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off"
                            data-title="Web Show" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="{$src}" alt="" data-bgposition="center center"
                                 data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg"
                                 data-bgparallax="6" data-no-retina>
                            <!-- LAYERS -->

                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-resizeme text-uppercase font-raleway text-center text-white"
                                 id="rs-{$i}-layer-1"

                                 data-x="['right']"
                                 data-hoffset="['30']"
                                 data-y="['middle']"
                                 data-voffset="['-130']"
                                 data-fontsize="['90','64','54','24']"
                                 data-lineheight="['95']"

                                 data-width="none"
                                 data-height="none"
                                 data-whitespace="nowrap"
                                 data-transform_idle="o:1;s:500"
                                 data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                                 data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                                 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                 data-start="1600"
                                 data-splitin="none"
                                 data-splitout="none"
                                 data-responsive_offset="on"
                                 style="z-index: 5; white-space: nowrap; font-weight:700;"><span
                                        class="text-theme-colored">{$object.title}</span>
                            </div>
                            <!-- LAYER NR. 2 -->
                            <div class="tp-caption tp-resizeme text-uppercase font-raleway text-center text-white"
                                 id="rs-{$i}-layer-2"

                                 data-x="['right']"
                                 data-hoffset="['30']"
                                 data-y="['middle']"
                                 data-voffset="['-50']"
                                 {*data-voffset="['-130'']"*}
                                 data-fontsize="['48']"
                                 data-lineheight="['75']"

                                 data-width="none"
                                 data-height="none"
                                 data-whitespace="nowrap"
                                 data-transform_idle="o:1;s:500"
                                 data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                                 data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                                 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                 data-start="1000"
                                 data-splitin="none"
                                 data-splitout="none"
                                 data-responsive_offset="on"
                                 style="z-index: 5; white-space: nowrap; font-weight:500;">{$strarr[0]}
                            </div>

                            <!-- LAYER NR. 3 -->
                            <div class="tp-caption tp-resizeme text-uppercase font-raleway text-center text-white"
                                 id="rs-{$i}-layer-3"

                                 data-x="['right']"
                                 data-hoffset="['30']"
                                 data-y="['middle']"
                                 data-voffset="['0']"
                                 {*data-voffset="['-80']"*}
                                 data-fontsize="['48']"
                                 data-lineheight="['75']"

                                 data-width="none"
                                 data-height="none"
                                 data-whitespace="nowrap"
                                 data-transform_idle="o:1;s:500"
                                 data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                                 data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                                 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                 data-start="1300"
                                 data-splitin="none"
                                 data-splitout="none"
                                 data-responsive_offset="on"
                                 style="z-index: 5; white-space: nowrap; font-weight:500;">{$strarr[1]}
                            </div>


                            <!-- LAYER NR. 3 -->
                            <div class="tp-caption tp-resizeme"
                                 id="rs-{$i}-layer-4"

                                 data-x="['right']"
                                 data-hoffset="['30']"
                                 data-y="['middle']"
                                 data-voffset="['80']"

                                 data-width="none"
                                 data-height="none"
                                 data-whitespace="nowrap"
                                 data-transform_idle="o:1;s:500"
                                 data-transform_in="y:100;scaleX:1;scaleY:1;opacity:0;"
                                 data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                                 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                 data-start="2000"
                                 data-splitin="none"
                                 data-splitout="none"
                                 data-responsive_offset="on"
                                 style="z-index: 5; white-space: nowrap; letter-spacing:1px;"><a
                                        class="btn btn-colored btn-flat btn-theme-colored" href="#price">Присоединяйся</a>
                            </div>
                        </li>
                        {/foreach}
                </ul>
            </div><!-- end .rev_slider -->
        </div>
        <!-- end .rev_slider_wrapper -->
        {literal}
            <script>
                $(document).ready(function (e) {
                    var revapi = $(".rev_slider").revolution({
                        sliderType: "standard",
                        jsFileLocation: "/assets/components/modxsite/templates/start-school/adult/js/revolution-slider/js/",
                        sliderLayout: "fullscreen",
                        dottedOverlay: "none",
                        delay: 9000,
                        navigation: {
                            keyboardNavigation: "off",
                            keyboard_direction: "horizontal",
                            mouseScrollNavigation: "off",
                            onHoverStop: "off",
                            touch: {
                                touchenabled: "on",
                                swipe_threshold: 75,
                                swipe_min_touches: 1,
                                swipe_direction: "horizontal",
                                drag_block_vertical: false
                            },
                            arrows: {
                                style: "zeus",
                                enable: true,
                                hide_onmobile: true,
                                hide_under: 600,
                                hide_onleave: true,
                                hide_delay: 200,
                                hide_delay_mobile: 1200,
                                tmp: '<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
                                left: {
                                    h_align: "left",
                                    v_align: "center",
                                    h_offset: 30,
                                    v_offset: 0
                                },
                                right: {
                                    h_align: "right",
                                    v_align: "center",
                                    h_offset: 30,
                                    v_offset: 0
                                }
                            },
                            bullets: {
                                enable: true,
                                hide_onmobile: true,
                                hide_under: 600,
                                style: "metis",
                                hide_onleave: true,
                                hide_delay: 200,
                                hide_delay_mobile: 1200,
                                direction: "horizontal",
                                h_align: "center",
                                v_align: "bottom",
                                h_offset: 0,
                                v_offset: 30,
                                space: 5,
                                tmp: '<span class="tp-bullet-img-wrap">  <span class="tp-bullet-image"></span></span><span class="tp-bullet-title">{{title}}</span>'
                            }
                        },
                        responsiveLevels: [1240, 1024, 778],
                        visibilityLevels: [1240, 1024, 778],
                        gridwidth: [1170, 1024, 778, 480],
                        gridheight: [720, 768, 960, 720],
                        lazyType: "none",
                        parallax: "mouse",
                        parallaxBgFreeze: "off",
                        parallaxLevels: [2, 3, 4, 5, 6, 7, 8, 9, 10, 1],
                        shadow: 0,
                        spinner: "off",
                        stopLoop: "on",
                        stopAfterLoops: 0,
                        stopAtSlide: -1,
                        shuffle: "off",
                        autoHeight: "off",
                        fullScreenAutoWidth: "off",
                        fullScreenAlignForce: "off",
                        fullScreenOffsetContainer: "",
                        fullScreenOffset: "0",
                        hideThumbsOnMobile: "off",
                        hideSliderAtLimit: 0,
                        hideCaptionAtLimit: 0,
                        hideAllCaptionAtLilmit: 0,
                        debugMode: false,
                        fallbacks: {
                            simplifyAll: "off",
                            nextSlideOnWindowFocus: "off",
                            disableFocusListener: false,
                        }
                    });
                });
            </script>
        {/literal}
        <!-- Slider Revolution Ends -->
    </div>
</section>
