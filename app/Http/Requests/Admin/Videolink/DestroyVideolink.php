<?php

namespace App\Http\Requests\Admin\Videolink;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Gate;

class DestroyVideolink extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return Gate::allows('admin.videolink.delete', $this->videolink);
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
