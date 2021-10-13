<?php

use Carbon\Carbon;


/**
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
/**
 * @param string $date
 * @return date
 */
if (!function_exists('dateTimeConvertDBtoForm')) {
    function dateTimeConvertDBtoForm($date)
    {
        if (!empty($date)) {
            return \Carbon\Carbon::parse($date)->format('d-m-Y H:i:s');
        }
    }
}
