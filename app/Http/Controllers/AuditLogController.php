<?php

namespace App\Http\Controllers;

use App\Http\Resources\AuditLogResource;
use App\Http\Resources\IpsResource;
use App\Models\AuditLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class AuditLogController extends ApiBaseController
{
    protected $ip_table;

    /**
     * IpTableController constructor.
     * Create a new controller instance.
     */
    public function __construct(Request $request)
    {
        $this->audit_log = new AuditLog;
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
            $auditList = $this->audit_log->orderBy('id', 'desc')->limit(100)->get();

            $this->response = [
                'status' => true,
                'message' => 'Audit Log List',
                'data' => new AuditLogResource($auditList),
            ];

            return $this->responseSuccess($this->response);
        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }
    }
}
