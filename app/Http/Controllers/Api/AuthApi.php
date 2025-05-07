<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Http\Requests\RegistorRequest;
use App\Http\Requests\LoginRequest;
// use Illuminate\Support\Facades\DB;

class AuthApi extends Controller
{

    function register(RegistorRequest $request)
    {

        $customer = Customer::where('email', $request->email)->first();

        if($customer){

            $token = md5(uniqid(rand(), true));
            $customer->token = $token;
            $customer->save();

            $response = [
                'customer' => $customer,
                'token' => $token,
                'message' => 'Successfully!',
                'status' => 200
            ];
        }else{
            $data = new Customer;
            $data->name = $request->name;
            $data->email = $request->email;
            $data->password = bcrypt($request->password);
            $data->simple_password = $request->password;
            $data->token = $token;
            $data->save();

            $customer = Customer::find($data->id);

            $token = md5(uniqid(rand(), true));

            $response = [
                'customer' => $customer,
                'token' => $token,
                'message' => 'Successfully!',
                'status' => 200
            ];
        }



        return response()->json($response);
    }

    public function logout(Request $request)
    {
        $token = $request->header('Authorization');
        Customer::where('token', $token)->update(['token' => NULL]);
            $response = [
                'message' => 'Successfully logged out',
                'status' => 200
            ];
            return response()->json($response);
    }

}
