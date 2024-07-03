<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    protected $table = 'customer';
    protected $primaryKey = 'CustID';
    protected $keyType = 'string'; 
    public $timestamps = false;

    public function customerTTH()
    {
        return $this->hasMany(CustomerTTH::class, 'CustID', 'CustID');
    }
}
