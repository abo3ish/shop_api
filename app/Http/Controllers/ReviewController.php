<?php

namespace App\Http\Controllers;

use App\Review;
use App\Product;
use Illuminate\Http\Request;
use App\Http\Requests\ReviewRequest;
use App\Http\Resources\ReviewResource;
use App\Exceptions\ReviewNotBelongsToUser;
use Symfony\Component\HttpFoundation\Response;

class ReviewController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Product $product)
    {
        return ReviewResource::collection($product->reviews);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ReviewRequest $request, Product $product)
    {
        $review = Review::create([
            $request,
            'body' => $request->body,
            'user_id' => auth()->id(),
            'product_id' => $product->id,
            'star' => $request->star
        ]);

        return response()->json([
            'data' => new ReviewResource($review),
        ], Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function show(Review $review)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function update(ReviewRequest $request, Product $product, Review $review)
    {
        // $review->body = $request->body;
        // $review->star = $request->star;
        // $review->save();
        $this->verifyReviewUser($review);

        $review->update($request->all());

        return response()->json([
            'data' => new ReviewResource($review),
        ], Response::HTTP_CREATED);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product, Review $review)
    {
        $review->delete();

        return response()->json([
            'data' => "Review Delete Succesffully",
        ], Response::HTTP_OK);
    }

    protected function verifyReviewUser($review)
    {
        if (auth()->id() !== $review->user_id) {
            throw new ReviewNotBelongsToUser;
        }
    }
}
