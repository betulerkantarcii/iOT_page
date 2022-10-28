    <!--CONTENT-->
@php    
    $currentLocale = \Illuminate\Support\Facades\App::getLocale();
    $turkceAylar = array(
    'Ocak',
    'Şubat',
    'Mart',
    'Nisan',
    'Mayıs',
    'Haziran',
    'Temmuz',
    'Ağustos',
    'Eylül',
    'Ekim',
    'Kasım',
    'Aralık'
);
@endphp



@if($template_data != null && count($main_post) > 0)
    @if($template_data->template_id == 1)
        <div class="blok-background mb-2" style="padding:30px 0;">   
            <div class="container">
                <div class="slide-container swiper">
                        <div class="slide-content">
                            <div class="card-wrapper swiper-wrapper">

                                @for($i=0; $i < count($main_post); $i++)
                                <div class="card swiper-slide shadow p-3 mb-5 bg-white rounded">

                                    <div class="image-content">

                                        <div class="card-image">
                                            @if(count($coverPost_urls) > $i)
                                            <a href="{{ $main_post[$i]->link }}"><img src="{{ url($coverPost_urls[$i])  }}" alt="" class="card-img"></a>
                                            @endif
                                        </div>
                                    </div>

                                    <div class="card-content scroll">
                                        <h2 class="name"> {{ $main_post[$i]->title }}</h2>
                                        <p class="description">{!! $main_post[$i]->description !!}</p>


                                    </div>
                                

                                </div>
                                @endfor
                            

                            </div>
                        </div>

                        <div class="swiper-button-next swiper-navBtn"></div>
                        <div class="swiper-button-prev swiper-navBtn"></div>
                        <div class="swiper-pagination"></div>
                    </div>
                <div style="padding-top:50px;"></div>
            </div>

    
    @elseif($template_data->template_id == 2 && count($coverPost_urls) == 4)
        <div class="blok-background mb-2">
        <div class="container">
            <div class="row hab er-manset-mobil">
                <div class="haber-manset-tablo haber-buyuk">
                    <a href="{{ $main_post[0]->link }}" class="haber-resim"
                       style="background-image:url({{ url($coverPost_urls[0]) }})"></a>
                    <div class="haber-manset-overlay">
                        <a class="overlay-link" href="#"></a>
                        <div class="haber-manset-yazilar">
                            <h3><a href="{{ $main_post[0]->link }}">{{ $main_post[0]->title }}</a></h3>
                            <p>{!! $main_post[0]->description !!}</p>
                        </div>
                    </div>
                </div>

                <div class="haber-kucuk">
                        <div class="haber-manset-tablo haber-k1">
                            <a href="{{ $main_post[1]->link }}" class="haber-resim"
                               style="background-image:url({{ url($coverPost_urls[1]) }})"></a>

                            <div class="haber-manset-overlay">
                                <a class="overlay-link" href="#"></a>
                                <div class="haber-manset-yazilar">
                                    <h3><a href="{{ $main_post[1]->link }}">{{ $main_post[1]->title }}</a></h3>
                                    <p>{!! $main_post[1]->description !!}</p>
                        
                                </div>
                            </div>
                        </div>
                            <div class="haber-manset-tablo haber-k2">
                            <a href="{{ $main_post[2]->link }}" class="haber-resim"
                               style="background-image:url({{ url($coverPost_urls[2]) }})"></a>

                            <div class="haber-manset-overlay">
                                <a class="overlay-link" href="#"></a>
                                <div class="haber-manset-yazilar">
                                    <h3><a href="{{ $main_post[2]->link }}">{{ $main_post[2]->title }}</a></h3>
                                    <p>{!! $main_post[2]->description !!}</p>
                                </div>
                            </div>
                        </div>
                           <div class="haber-manset-tablo haber-k3 radius">
                            <a href="{{ $main_post[3]->link }}" class="haber-resim"
                               style="background-image:url({{ url($coverPost_urls[3]) }})"></a>

                            <div class="haber-manset-overlay">
                                <a class="overlay-link" href="#"></a>
                                <div class="haber-manset-yazilar">
                                    <h3><a href="{{ $main_post[3]->link }}">{{ $main_post[3]->title }}</a></h3>
                                    <p>{!! $main_post[3]->description !!}</p>
                                </div>
                            </div>
                        </div>
                         
                 </div>
            </div>
        </div>
    </div>
    

    @elseif($template_data->template_id == 3)
        <div class="blok-background mb-2">   
            <div class="container">
                <div class="list-group w-auto">
                @for($i=0; $i < count($main_post); $i++)
                    <a href="{{ $main_post[$i]->link }}" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
                        <img src="{{ url($coverPost_urls[$i])  }}" class="img-mobile-temp3 rounded flex-shrink-0"  alt="twbs" >
                        <div class="d-flex gap-2 w-100 justify-content-between">
                        <div class="temp3-align">
                            <h2 class="mb-0"><strong>{{ $main_post[$i]->title }}</strong> </h2>
                            <p class="mb-0 opacity-75">{!! $main_post[$i]->description !!}</p>
                        </div>
                        </div>
                    </a>
                @endfor
                
                </div>
            </div>
        </div>
        
    
    @elseif($template_data->template_id == 4 && count($dataEtkinlik) > 0)

    <div class="blok-background mb-2" style="padding:30px 0;">   
            <div class="container">
                <div class="slide-container swiper">
                        <div class="slide-content">
                            <div class="card-wrapper swiper-wrapper">

                                @for($i=0; $i < count($main_post); $i++)
                                <div class="card swiper-slide shadow p-3 mb-5 bg-white rounded">

                                    <div class="image-content">

                                        <div class="card-image">
                                        @if(count($coverPost_urls) > $i)
                                            <a href="{{ $main_post[$i]->link }}"><img src="{{ url($coverPost_urls[$i])  }}" alt="" class="card-img"></a>
                                        @endif
                                         </div>
                                    </div>

                                    <div class="card-content scroll">
                                        <h2 class="name">{{ $main_post[$i]->title }}</h2>
                                        <p class="description">{!! $main_post[$i]->description !!}</p>


                                    </div>
                                

                                </div>
                                @endfor
                            

                            </div>
                        </div>

                        <div class="swiper-button-next swiper-navBtn"></div>
                        <div class="swiper-button-prev swiper-navBtn"></div>
                        <div class="swiper-pagination"></div>
                    </div>

            </div>

    
   
    <div class="container" style="padding: 80px 0 40px 0;">
        <div class="row"  style="padding: 15px 0;">
        @for($i = 0; $i < count($dataEtkinlik); $i++)
                @php
                    $item = $dataEtkinlik[$i];
                    $eventTitle = $item->title;
                    $eventLocation = $item->event_location;
                    $eventTime = $item->event_time;
                    $e_d = $eventTime->format('d');
                    $e_M = $eventTime->format('M');
                    $e_m = $eventTime->format('m');
                    $e_t = $eventTime->format('H:i');
                    if($currentLocale == 'tr'){
                        $e_M = $turkceAylar[$e_m - 1];
                    }
                        
                @endphp
            <div class="col-md-3" style="padding-bottom: 20px;">
                <time datetime="2014-09-20" class="icon">
                  <a href="#" style="padding:0 5px;">{{ $eventTitle }}</a>
                  <em>{{ $e_t }}</em>
                  <div>{{ $eventLocation }}</div>
                  <strong>{{ $e_d . ' ' . $e_M }}</strong>
                </time>
            </div>
        @endfor
        </div>
    </div>

</div>



    @elseif($template_data->template_id == 5 && count($coverPost_urls) == 4 && count($dataEtkinlik) > 0)
        <div class="blok-background mb-2">
        <div class="container">
            <div class="row haber-manset-mobil">
                <div class="haber-manset-tablo haber-buyuk">
                    <a href="{{ $main_post[0]->link }}" class="haber-resim"
                       style="background-image:url({{ url($coverPost_urls[0]) }})"></a>
                    <div class="haber-manset-overlay">
                        <div class="haber-manset-yazilar">
                            <h3><a href="{{ $main_post[0]->link }}">{{ $main_post[0]->title }}</a></h3>
                            <p>{!! $main_post[0]->description !!}</p>
                        </div>
                    </div>
                </div>

                <div class="haber-kucuk">
                        <div class="haber-manset-tablo haber-k1">
                            <a href="{{ $main_post[1]->link }}" class="haber-resim"
                               style="background-image:url({{ url($coverPost_urls[1]) }})"></a>

                            <div class="haber-manset-overlay">
                                <div class="haber-manset-yazilar">
                                    <h3><a href="{{ $main_post[1]->link }}">{{ $main_post[1]->title }}</a></h3>
                                    <p>{!! $main_post[1]->description !!}</p>
                        
                                </div>
                            </div>
                        </div>
                            <div class="haber-manset-tablo haber-k2">
                                <a href="{{ $main_post[2]->link }}" class="haber-resim"
                               style="background-image:url({{ url($coverPost_urls[2]) }})"></a>

                            <div class="haber-manset-overlay">
                                <div class="haber-manset-yazilar">
                                    <h3><a href="{{ $main_post[2]->link }}">{{ $main_post[2]->title }}</a></h3>
                                    <p>{!! $main_post[2]->description !!}</p>
                                </div>
                            </div>
                        </div>
                           <div class="haber-manset-tablo haber-k3 radius">
                            <a href="{{ $main_post[3]->link }}" class="haber-resim"
                               style="background-image:url({{ url($coverPost_urls[3]) }})"></a>

                            <div class="haber-manset-overlay">
                                <div class="haber-manset-yazilar">
                                    <h3><a href="{{ $main_post[3]->link }}">{{ $main_post[3]->title }}</a></h3>
                                    <p>{!! $main_post[3]->description !!}</p>
                                </div>
                            </div>
                        </div>
                         
                 </div>
            </div>
        </div>
    </div>

    <div class="container" style="padding: 80px 0 40px 0;">
        <div class="row"  style="padding: 15px 0;">
        @for($i = 0; $i < count($dataEtkinlik); $i++)
                @php
                    $item = $dataEtkinlik[$i];
                    $eventTitle = $item->title;
                    $eventLocation = $item->event_location;
                    $eventTime = $item->event_time;
                    $e_d = $eventTime->format('d');
                    $e_M = $eventTime->format('M');
                    $e_m = $eventTime->format('m');
                    $e_t = $eventTime->format('H:i');
                    if($currentLocale == 'tr'){
                        $e_M = $turkceAylar[$e_m - 1];
                    }
                        
                @endphp
            <div class="col-md-3" style="padding-bottom: 20px;">
                <time datetime="2014-09-20" class="icon">
                  <a href="#" style="padding:0 5px;">{{ $eventTitle }}</a>
                  <em>{{ $e_t }}</em>
                  <div>{{ $eventLocation }}</div>
                  <strong>{{ $e_d . ' ' . $e_M }}</strong>
                </time>
            </div>
        @endfor
        </div>
    </div>
    </div>
        
    
    @endif

@else
    <div class="blok-background mb-2">
        <div class="container">
        </div>
    </div>


@endif
        



    <!--CONTENT-->