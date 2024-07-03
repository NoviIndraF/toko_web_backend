<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerTthDetail extends Model
{
    use HasFactory;

    protected $table = 'customerTthDetail';
    protected $primaryKey = 'ID';
    public $timestamps = false;

    public function customerTTH()
    {
        return $this->belongsTo(CustomerTTH::class, 'TTOTTPNo', 'TTOTTPNo');
    }
}
