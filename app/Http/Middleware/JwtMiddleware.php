<?php

namespace App\Http\Middleware;

use Closure;

use Exception;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;
use Tymon\JWTAuth\Http\Middleware\BaseMiddleware;
use JWTAuth;

class JwtMiddleware extends BaseMiddleware
{

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        try {
            $user = JWTAuth::parseToken()->authenticate();

        } catch (Exception $e) {
            if ($e instanceof TokenInvalidException){
                return response()->json([
                    'status' => 'error',
                    'message' => 'Token is Invalid'
                ]);
            }else if ($e instanceof TokenExpiredException){
                return response()->json([
                    'status' => 'error',
                    'message' => 'Token is Expired'
                ]);
            }else{
                return response()->json([
                    'status' => 'error',
                    'message' => 'Authorization Token not found'
                ]);
            }
        }
        return $next($request);
    }
}