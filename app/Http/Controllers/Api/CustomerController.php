<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;

class CustomerController extends Controller
{
    function list()
    {
        $customers = Customer::get();

        $response = [
            'customers' => $customers,
        ];
        return response()->json($response);
    }
}
