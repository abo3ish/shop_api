<?php

namespace App\Exceptions;

use Exception;

class ProductNotBelongsToUser extends Exception
{
    public function render()
    {
        return [
            'error' => 'This Product does Not belong to YOU',
        ];
    }
}
