<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\Traits\ApiErrorResponse;

class LoginRequest extends FormRequest
{
    use ApiErrorResponse;
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
        $login_type = request()->login_type;

        if($login_type==1) //Google
        {
            return [
                'email' => 'required|email',
                'login_type' => 'required',
            ];
        }else if($login_type==2){    //Facebook

        }else{   //Normal
            return [
                'mobile' => 'required|min:10|max:10',
                'login_type' => 'required',
            ];
        }
    }
}
