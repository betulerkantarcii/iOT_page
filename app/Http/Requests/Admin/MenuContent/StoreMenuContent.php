<?php

namespace App\Http\Requests\Admin\MenuContent;

use Brackets\Translatable\TranslatableFormRequest;
use Illuminate\Support\Facades\Gate;
use Illuminate\Validation\Rule;

class StoreMenuContent extends TranslatableFormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return Gate::allows('admin.menu-content.create');
    }

/**
     * Get the validation rules that apply to the requests untranslatable fields.
     *
     * @return array
     */
    public function untranslatableRules(): array {
        return [
            'enabled' => ['required', 'boolean'],
            'menu_id' => ['nullable', 'integer'],
            'menu' => ['required'],
            
        ];
    }

    public function getMenuId(){
        if ($this->has('menu')){
            return $this->get('menu')['id'];
        }
        return null;
    }

    /**
     * Get the validation rules that apply to the requests translatable fields.
     *
     * @return array
     */
    public function translatableRules($locale): array {
        return [
            'title' => ['required', 'string'],
            'description' => ['required', 'string'],
            
        ];
    }

    /**
    * Modify input data
    *
    * @return array
    */
    public function getSanitized(): array
    {
        $sanitized = $this->validated();

        //Add your code for manipulation with request data here

        return $sanitized;
    }
}
