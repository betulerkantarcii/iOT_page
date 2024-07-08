<?php

namespace App\Http\Requests\Admin\MenuContent;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Gate;

class DestroyMenuContent extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return Gate::allows('admin.menu-content.delete', $this->menuContent);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [];
    }
}
