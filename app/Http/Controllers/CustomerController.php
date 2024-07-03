<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\CustomerTTH;
use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Customer $customer)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Customer $customer)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Customer $customer)
    {
        //
    }

    public function getCustomer(Request $request){
        $results  = Customer::get();

        if($results){
            return ResponseFormatter::success(
                $results,
                'Data Customer berhasil dipanggil'
            );
        } else{
            return ResponseFormatter::success(
                null,
                'Data Customer tidak ada',
                404
            );
        }
    }
}
