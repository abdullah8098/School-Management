<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Requests\CreateProductRequest;

class ProductApi extends Controller
{
    public function list(Request $request)
    {
        $data = Product::get();
        if($data)
        {
            $response = [
                'products' => $data,
                'message' => 'Success!',
                'status' => 200
            ];
        }else{
            $response = [
                'message' => 'Something went wrong!',
                'status' => 401
            ];
        }

        return response()->json($response);
    }

    public function create(CreateProductRequest $request)
    {
        $data = [
            'name' => $request->name,
            'price' => $request->price,
        ];
        $product = new Product();
        $product->name =  $request->name;
        $product->price =  $request->price;
        $product->save();

        $response = [
            'message' => 'Added Successfully!',
            'status' => 200
        ];

        return response()->json($response);
    }

    public function update(CreateProductRequest $request, $id)
    {
        $data = [
            'name' => $request->name,
            'price' => $request->price,
        ];
        $product = Product::where('id',$id)->first();
        $product->name =  $request->name;
        $product->price =  $request->price;
        $product->save();

        $response = [
            'message' => 'Updated Successfully!',
            'status' => 200
        ];

        return response()->json($response);
    }

    public function destroy( $id)
    {
        $product = Product::where('id',$id)->first();
        if($product->delete()){
            $response = [
                'message' => 'Deleted Successfully!',
                'status' => 200
            ];
        }else{
            $response = [
                'message' => 'Something Went Wrong!',
                'status' => 400
            ];
        }


        return response()->json($response);
    }
}
