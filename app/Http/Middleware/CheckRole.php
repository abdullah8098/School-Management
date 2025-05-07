<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class CheckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle($request, Closure $next, ...$roles)
    {
        // return $next($request);

        // Check if the user is authenticated
        if (Auth::check()) {
            // Check if the user's role matches one of the specified roles
            if (in_array(Auth::user()->role, $roles)) {
                return $next($request);
            }
        }

        // Redirect or handle unauthorized access
        abort(401, 'Unauthorized.');
    }
}
