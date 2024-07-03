<?php

namespace App\Http\Controllers;

use App\Models\CustomerTTH;
use Illuminate\Http\Request;
use App\Models\CustomerTthDetail;
use App\Helpers\ResponseFormatter;

class CustomerTthDetailController extends Controller
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
    public function show(CustomerTthDetail $customerTthDetail)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, CustomerTthDetail $customerTthDetail)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(CustomerTthDetail $customerTthDetail)
    {
        //
    }

    public function getCustomerDetailByIdCustomer(Request $request){
        $results  = CustomerTTH::where('CustID', $request->custid)->with('customerDetail')->get();

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
