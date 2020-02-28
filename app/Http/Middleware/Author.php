<?php

namespace App\Http\Middleware;

use Closure;

class Author
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
        $type = auth()->user()['type'];
        if($type==1 || $type ==3){
            return $next($request);
        }
        return response()->json(['error' => 'Unauthorized'], 401);
        
    }
}
