<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;

class TanyaModel {
	public static function get_all(){
		$tanya = DB::table('tanya')->get();
		return $tanya;
	}
	public static function save($data){
		$new_tanya = DB::table('tanya')->insert($data);
		return $new_tanya;
	}
}