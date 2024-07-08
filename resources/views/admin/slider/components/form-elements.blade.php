@if ($mode === 'create')
<div class="row">
    <div class="col-md">
        <div class="form-group row align-items-center">
            <div class="col-md-2"></div>
            <div class="col-md">
                <div class="row">
                    <div class="col-md-9">
                    @include('brackets/admin-ui::admin.includes.media-uploader', [
                            'mediaCollection' => app(App\Models\Slider::class)->getMediaCollection('cover'),
                            'label' => trans('Cover photo')
                    ])
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@else
<div class="row">
        <div class="col-md">
            <div class="form-group row align-items-center">
                <div class="col-md-2"></div>
                <div class="col-md">
                    <div class="row">
                        <div class="col-md-9">
                            @include('brackets/admin-ui::admin.includes.media-uploader', [
                               'mediaCollection' => $slider->getMediaCollection('cover'),
                               'media' => $slider->getThumbs200ForCollection('cover'),
                               'label' => trans('Cover photo')
                           ])
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 @endif