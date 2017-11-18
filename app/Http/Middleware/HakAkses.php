<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use App\Status;

class HakAkses
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $status)
    {
      // dd(Status::where('id_status',Auth::user()->id_status)->first()->status);
        // dd(Status::where('id_status',Auth::user()->id_status)->first()->status != $status);
        if (Auth::check() && Status::where('id_status',Auth::user()->id_status)->first()->status != $status) {
          return redirect('aksesDitolak');
        }
        return $next($request);
    }
}
