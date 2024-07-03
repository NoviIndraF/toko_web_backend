<?php

namespace App\Models;

use App\Models\CustomerTthDetail;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CustomerTTH extends Model
{
    use HasFactory;

    protected $table = 'customerTTH';
    protected $primaryKey = 'ID';
    public $timestamps = false;

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'CustID');
    }


    public function customerDetail()
    {
        return $this->hasMany(CustomerTthDetail::class, 'TTOTTPNo', 'TTOTTPNo');
    }

    
}
