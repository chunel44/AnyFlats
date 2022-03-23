<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Commentary extends Model
{
    use HasFactory, Notifiable;
    protected $primaryKey = 'id';

    protected $fillable = [
        'email',
        'tipo',
        'fecha_de_nacimiento'
    ];

    protected $hidden = [
        'updated_at',
    ];
}
