<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Press extends Model
{
    protected $table = 'press'; 
    
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user'); 
    }
    protected $fillable = [
        'head_img',
        'img',
        'date',
        'name',
        'text',
    ];
    public $timestamps = false;
}
