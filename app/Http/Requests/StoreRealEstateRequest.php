<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreRealEstateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:128',
            'real_state_type' => 'required|in:house,department,land,commercial_ground',
            'street' => 'required|string|max:128',
            'external_number' => ['required', 'string', 'max:12', 'regex:/^[A-Za-z0-9\-]+$/'],
            'internal_number' => [
                'nullable',
                'string',
                'max:12',
                'regex:/^[A-Za-z0-9\- ]+$/',
                'required_if:real_state_type,department,commercial_ground',
            ],
            'neighborhood' => 'required|string|max:128',
            'city' => 'required|string|max:64',
            'country' => ['required', 'string', 'size:2', 'regex:/^[A-Za-z]{2}$/'],
            'rooms' => 'required|integer',
            'bathrooms' => [
                'required',
                'numeric',
                Rule::when(
                    in_array($this->input('real_state_type'), ['land', 'commercial_ground'], true),
                    'gte:0',
                    'gt:0'
                ),
            ],
            'comments' => 'nullable|string|min:1|max:128',
        ];
    }
}
