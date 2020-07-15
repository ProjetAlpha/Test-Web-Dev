<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Actors extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'lastname', 'firstname', 'image', 'description', 'path',
    ];
}
