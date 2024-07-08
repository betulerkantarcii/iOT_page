@php
    $currentLocale = \Illuminate\Support\Facades\App::getLocale();
@endphp


<!-- Header

<header id="header" class="icheader">

<div class="container-fluid">
    <div class="row justify-content-between">
        <div class="col">
            <img class="logo-white logo-ic" src="images/agu-logo-white.svg"  alt="Abdullah Gül Üniversitesi" />
        </div>
        <div class="col-auto">
            <div class="header-alt halt-ic">
                <ul> 
                    @foreach($locales as $locale)
                        @if($locale != $currentLocale)
                            <li class="nav-item active">
                                <a class="nav-link" href="{{ route('lang.switch', $locale) }}">{{ strtoupper($locale) }}</a>
                            </li>
                        @endif 
                    @endforeach
                    
                </ul>

                
            </div>
        </div>
    </div>
</div>

</header>

Header-->


 