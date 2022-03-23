<?php

namespace App\Http\Controllers;

use App\Models\Commentary;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class CommentaryController extends Controller
{
    protected $user;
    public function __construct(Request $request) {
        $token = $request->header('Authorization');
        if($token != ''){
            $this->user = JWTAuth::parseToken()->authenticate();
        }
    }

    public function postComenntary(Request $request){
        $data = $request->only('email', 'tipo', 'fecha_de_nacimiento');
        $validator = Validator::make($data, [
            'email' => 'required|email',
            'tipo' => 'required|string',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()->toJson()], 400);
        }
        $commentary = Commentary::create([
            'email' => $request->email,
            'tipo' => $request->tipo,
            'fecha_de_nacimiento' => $request->fecha_de_nacimiento,
        ]);

        return response()->json([
            'message' => 'Product created',
            'data' => $commentary
        ], Response::HTTP_OK);

    }
    public function getComenntaries(){
        $data = Commentary::all();
        return response()->json($data, 200);
    }

    public function getComenntariesLength(){
        $data = Commentary::count();
        return response()->json($data, 200);
    }
}
