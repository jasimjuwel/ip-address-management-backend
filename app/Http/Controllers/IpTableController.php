<?php

namespace App\Http\Controllers;

use App\Http\Requests\IpTableRequest;
use App\Http\Resources\IpResource;
use App\Http\Resources\IpsResource;
use App\Models\IpTable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class IpTableController extends ApiBaseController
{

    protected $ip_table;

    /**
     * IpTableController constructor.
     * Create a new controller instance.
     */
    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->ip_table = new IpTable;
    }

    /**
     * Get product List.
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function index()
    {
        try {
            $ipList = $this->ip_table->orderBy('id', 'desc')->get();

            $this->response = [
                'status' => true,
                'message' => 'Product List',
                'data' => new IpsResource($ipList),
            ];

            return $this->responseSuccess($this->response);
        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }
    }

    /**
     * Store a new IP.
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function store(IpTableRequest $request)
    {
        try {
            $ipData = $this->ip_table;
            $ipData->ip_address = $request->ip_address;
            $ipData->ip_label = $request->ip_label;
            $ipData->save();

            $this->response = [
                'status' => true,
                'message' => 'Ip Address Created',
                'data' => new IpResource($ipData),
            ];

            return $this->responseSuccess($this->response);
        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }
    }

    /**
     * Get ip table details.
     *
     * @param int $id
     * @return JsonResponse
     */
    public function show($id)
    {
        try {
            $data = $this->ip_table->findOrFail($id);

            $this->response = [
                'status' => true,
                'message' => 'Ip address Details',
                'data' => new IpResource($data),
            ];

            return $this->responseSuccess($this->response);

        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }
    }

    /**
     * Get ip table edit details.
     *
     * @param int $id
     * @return JsonResponse
     */
    public function edit($id)
    {
        try {
            $data = $this->ip_table->findOrFail($id);

            $this->response = [
                'status' => true,
                'message' => 'IP Address Details',
                'data' => new IpResource($data),
            ];

            return $this->responseSuccess($this->response);
        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }
    }

    /**
     * update ip address.
     *
     * @param $id
     * @param Request $request
     * @return JsonResponse
     */
    public function update(IpTableRequest $request, $id)
    {
        try {
            $ipData = $this->ip_table->findOrFail($id);
            $ipData->ip_address = $request->ip_address;
            $ipData->ip_label = $request->ip_label;
            $ipData->save();

            $this->response = [
                'status' => true,
                'message' => 'Ip address Updated',
                'data' => new IpResource($ipData),
            ];

            return $this->responseSuccess($this->response);

        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }
    }

}
