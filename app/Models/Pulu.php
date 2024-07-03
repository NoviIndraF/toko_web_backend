<?php

namespace App\Models;

use App\Models\Pulu2;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Pulu extends Model
{
    use HasFactory;
    protected $table = 'pulu';
    protected $primaryKey = 'id';

    public function pulu2()
    {
        return $this->hasMany(Pulu2::class, 'id');
    }
}
