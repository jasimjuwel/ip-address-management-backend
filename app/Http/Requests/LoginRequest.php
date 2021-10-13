<?php

namespace App\Http\Requests;

use Pearl\RequestValidate\RequestAbstract;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Validation\ValidationException;
use Illuminate\Http\Exceptions\HttpResponseException;

class LoginRequest extends RequestAbstract
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [
            'email' => 'required|string|email|max:100',
            'password' => 'required|string|min:6',
        ];

    }
    protected function failedValidation(Validator $validator): ValidationException    {

        throw new HttpResponseException(validationErrorResponse($validator->errors()));
    }
    /**
     * Get custom messages for validator errors.
     *
     * @return array
     */
    public function messages(): array
    {
        return [
            //
        ];
    }

}
