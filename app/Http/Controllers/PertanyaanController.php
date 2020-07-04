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
    public function show($id){
        $tanya = TanyaModel::find_by_id($id);
        $jawab = TanyaModel::find_by_id_pertanyaan($id);
        return view('items.show', compact('tanya','jawab'));
    }
    public function edit($id){
        $tanya = TanyaModel::find_by_id($id);
        return view('items.edit', compact('tanya'));
    }
    public function update($id, Request $request){
        $tanya = TanyaModel::update($id, $request->all());
        return redirect('/pertanyaan');
    }
    public function destroy($id){
        $deleted = TanyaModel::destroy($id);
        return redirect('/pertanyaan'); 
    }
}





