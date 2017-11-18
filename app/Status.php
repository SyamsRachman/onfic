<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
  protected $table = 'status';
  public $timestamps = false;
  protected $primaryKey = 'id_status';

  // public function user()
  // {
  //   $this->hasMany(User::class);
  // }
}
