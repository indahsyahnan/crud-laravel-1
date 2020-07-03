<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TanyaModel;

class PertanyaanController extends Controller
{
    public function index(){
    	$tanya = TanyaModel::get_all();
    	return view('items.index',compact('tanya'));
    }
    public function create(){
    	return view('items.form');
    }
    public function store(Request $request){
	   	$data = $request->all();
	   	unset($data["_token"]);
	   	$item = TanyaModel::save($data);
	   	if($item){
	   		return redirect('/pertanyaan');
	   	}
    }

}





