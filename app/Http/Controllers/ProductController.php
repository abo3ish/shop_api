<?php

namespace App\Http\Controllers;

use App\Review;
use App\Product;
use Illuminate\Http\Request;
use App\Http\Requests\ProductRequest;
use App\Http\Resources\ProductResource;
use App\Http\Resources\ProductCollection;
use App\Exceptions\ProductNotBelongsToUser;
use Symfony\Component\HttpFoundation\Response;

class ProductController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:api')->except('index', 'show');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ProductCollection::collection(Product::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $this->verifiyProductUser($product);

        $product = new Product;
        $request['detail'] = $request->description;
        unset($product['description']);
        $product = Product::create($request->all());

        return response([
            'data' => new ProductResource($product)
        ], Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return new ProductResource($product);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $this->verifiyProductUser($product);

        $request['detail'] = $request->description;
        unset($request['description']);

        $product->update($request->all());

        return response([
            'data' => new ProductResource($product)
        ], Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $this->verifiyProductUser($product);

        $product->delete();

        return response()->json([
            'message' => 'Product Deleted Successfully'
        ], Response::HTTP_OK);
    }

    protected function verifiyProductUser($product)
    {
        if (auth()->id() !== $product->user_id) {
            throw new ProductNotBelongsToUser;
        }
    }
}
