<?php
namespace App\Exceptions;

use Symfony\Component\HttpFoundation\Response;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

trait ApiExceptionTrait
{
    public function apiException($request, $exception)
    {
        if ($this->isModelException($exception)) {
            return $this->modelExceptionResponse();
        }
        if ($this->isHttpException($exception)) {

            return $this->httpExceptionResponse();
        }
        return parent::render($request, $exception);
    }
    protected function isModelException($exception)
    {
        return $exception instanceof ModelNotFoundException;
    }
    protected function isHttpException($exception)
    {
        return $exception instanceof NotFoundHttpException;
    }
    protected function modelExceptionResponse()
    {
        return response()->json([
            'errors' => 'Model Is NOT Found'
        ], Response::HTTP_NOT_FOUND);
    }
    protected function httpExceptionResponse()
    {
        return response()->json([
            'errors' => 'Route Is Incorrect'
        ], Response::HTTP_NOT_FOUND);
    }

}