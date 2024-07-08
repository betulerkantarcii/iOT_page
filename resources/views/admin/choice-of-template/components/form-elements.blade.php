<div class="card">
    <div class="card-header">
        <i class="fa fa-user"></i> Template </span>
    </div>

    <div class="card-block">
        <div class="form-group row align-items-center"
             :class="{'has-danger': errors.has('template_id'), 'has-success': this.fields.template_id && this.fields.template_id.valid }">
            <label for="template_id"
                   class="col-form-label text-center col-md-4 col-lg-3">{{ trans('admin.choice-of-template.columns.template_id') }}</label>
            <div class="col-md-8 col-lg-9">

                    <multiselect
                    v-model="form.template"
                    :options="templates"
                    :multiple="false"
                    track-by="id"
                    label="name"
                    tag-placeholder="{{ __('Select Template') }}"
                    placeholder="{{ __('Template') }}">
                </multiselect>

                <div v-if="errors.has('template_id')" class="form-control-feedback form-text" v-cloak>@{{
                    errors.first('template_id') }}
                </div>
            </div>
        </div>

    </div>

</div>




<div class="card-group">
  <div class="card">
    <img class="card-img-top" src="{{ mix('images/temp1.png') }}" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Carousel</h5>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="{{ mix('images/temp2.png') }}" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Card View</h5>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="{{ mix('images/temp3.png') }}" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">List Group</h5>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="{{ mix('images/temp4.png') }}" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Carousel + Event</h5>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="{{ mix('images/temp5.png') }}" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Card View + Event</h5>
    </div>
  </div>
</div>