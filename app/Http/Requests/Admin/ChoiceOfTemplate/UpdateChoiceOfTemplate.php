<?php

namespace App\Http\Requests\Admin\ChoiceOfTemplate;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Gate;
use Illuminate\Validation\Rule;

class UpdateChoiceOfTemplate extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return Gate::allows('admin.choice-of-template.edit', $this->choiceOfTemplate);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [
            'template_id' => ['nullable', 'integer'],
            'template' => ['required'],
            
        ];
    }

    public function getTemplateId(){
        if ($this->has('template')){
            return $this->get('template')['id'];
        }
        return null;
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
