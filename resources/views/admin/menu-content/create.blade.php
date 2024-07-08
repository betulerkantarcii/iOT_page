@extends('brackets/admin-ui::admin.layout.default')

@section('title', trans('admin.menu-content.actions.create'))

@section('body')

    <div class="container-xl">

                <div class="card">
        
        <menu-content-form
            :action="'{{ url('admin/menu-contents') }}'"
            :locales="{{ json_encode($locales) }}"
            :menus="{{$menus->toJson()}}"
            :send-empty-locales="false"
            v-cloak
            inline-template>

            <form class="form-horizontal form-create" method="post" @submit.prevent="onSubmit" :action="action" novalidate>
                
                <div class="card-header">
                    <i class="fa fa-plus"></i> {{ trans('admin.menu-content.actions.create') }}
                </div>

                <div class="card-body">
                    @include('admin.menu-content.components.form-elements')
                </div>
                                
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary" :disabled="submiting">
                        <i class="fa" :class="submiting ? 'fa-spinner' : 'fa-download'"></i>
                        {{ trans('brackets/admin-ui::admin.btn.save') }}
                    </button>
                </div>
                
            </form>

        </menu-content-form>

        </div>

        </div>

    
@endsection