<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Status;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    // public function status()
    // {
    //   return $this->belongsTo(Status::class,'id_status');
    // }
    // public function punyaStatus($status)
    // {
    //   dd(Status::where('id_status',1)->get()=>$statusAkun->status);
    //   if ($this->status()->status == $status) {
    //     return true;
    //   } else {
    //     return false;
    //   }
    // }
}
