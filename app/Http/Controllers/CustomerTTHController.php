<?php

namespace App\Http\Controllers;

use App\Models\CustomerTTH;
use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use Illuminate\Support\Facades\DB;

class CustomerTTHController extends Controller
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
    public function show(CustomerTTH $customerTTH)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, CustomerTTH $customerTTH)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(CustomerTTH $customerTTH)
    {
        //
    }

    public function getCustomerTthById(Request $request){
        $results  = CustomerTTH::where('CustID', $request->id)->get();

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

    public function updateReceivedYesCustomerTTH(Request $request, CustomerTTH $customerTTH)
    {
        DB::table('customerTTH')
        ->where('custid', $request->custid)
        ->update([
            'Received' => (int)$request->received,
            'ReceivedDate' => $request->receivedDate
        ]);
        $customerTTH  = CustomerTTH::where('custid', $request->custid)->get();
        if($customerTTH){
            return ResponseFormatter::success(
                $customerTTH,
                'Data berhasil diupdate'
            );
        } else{
            return ResponseFormatter::success(
                null,
                'Data tidak ada',
                404
            );
        }
    }

    public function updateReceivedNoCustomerTTH(Request $request, CustomerTTH $customerTTH)
    {
        DB::table('customerTTH')
        ->where('custid', $request->custid)
        ->update([
            'Received' => (int)$request->received,
            'ReceivedDate' => $request->receivedDate,
            'FailedReason' => $request->failedReason,
        ]);
        $customerTTH  = CustomerTTH::where('custid', $request->custid)->get();
        if($customerTTH){
            return ResponseFormatter::success(
                $customerTTH,
                'Data berhasil diupdate'
            );
        } else{
            return ResponseFormatter::success(
                null,
                'Data tidak ada',
                404
            );
        }
    }
}
