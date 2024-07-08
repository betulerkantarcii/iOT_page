<div class="form-group row align-items-center" :class="{'has-danger': errors.has('video_link'), 'has-success': fields.video_link && fields.video_link.valid }">
    <label for="video_link" class="col-form-label text-md-right" :class="isFormLocalized ? 'col-md-4' : 'col-md-2'">{{ trans('admin.videolink.columns.video_link') }}</label>
    <div :class="isFormLocalized ? 'col-md-4' : 'col-md-9 col-xl-8'">
        <div>
            <textarea class="form-control" v-model="form.video_link" v-validate="'required'" id="video_link" name="video_link"></textarea>
        </div>
        <div v-if="errors.has('video_link')" class="form-control-feedback form-text" v-cloak>@{{ errors.first('video_link') }}</div>
    </div>
</div>


