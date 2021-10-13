<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class AuthController extends ApiBaseController
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @param Request $request
     * @return Response
     */
    public function login(LoginRequest $request)
    {
        try {
            $credentials = $request->only(['email', 'password']);

            if (!$token = Auth::attempt($credentials)) {

                return $this->responseError(trans('api.UNAUTHORIZED'));
            }
            $data = $this->respondWithToken($token);

            $this->response = [
                'status' => true,
                'message' => trans('api.login'),
                'data' => $data
            ];

            return $this->responseSuccess($this->response);
        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }
    }

    /**
     * Get user details.
     *
     * @param Request $request
     * @return Response
     */
    public function profile()
    {
        try {
            $data = auth()->user();

            $this->response = [
                'status' => true,
                'message' => trans('api.user_details'),
                'data' => $data
            ];

            return $this->responseSuccess($this->response);
        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        try {
            auth()->logout();

            $this->response = [
                'status' => true,
                'message' => trans('api.logout'),
                'data' => null
            ];

            return $this->responseSuccess($this->response);
        } catch (\Exception $e) {
            Log::error($e->getMessage());

            return $this->responseInternalError(trans('api.ERROR'));
        }

    }

    /**
     * @param Request $token
     * Respond with token user data.
     * Private Method
     * @return array
     */

    private function respondWithToken($token)
    {
        return [
            'token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user()
        ];
    }
}
