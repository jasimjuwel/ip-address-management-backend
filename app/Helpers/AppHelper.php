<?php

use Carbon\Carbon;


/**
 * @param string $message
 *
 * @param string $data
 * @return json
 */
if (!function_exists('validationErrorResponse')) {
    function validationErrorResponse($message)
    {
        return response()->json([
            'status'        => false,
            'code'          => 422, // $this->getStatusCode(), //OR 200
            'message'       => trans('api.INPUT_INVALID'),
            'data'          => null,
            'errors'        => $message,
        ]);
    }
}
