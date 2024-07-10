<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Users;

class Comment extends Model
{
    protected $table = 'comment'; 

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user'); 
    }
}
