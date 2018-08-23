<?php

namespace App\Exceptions;

use Exception;
use Symfony\Component\HttpFoundation\Response;

class ReviewNotBelongsToUser extends Exception
{
    public function render()
    {
        return response()->json([
            'error' => 'This is not Your review to Update'
        ], Response::HTTP_UNAUTHORIZED);
    }
}
