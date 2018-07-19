<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Usuarios;
use App\Http\Resources\Usuarios as UsuariosResource;

use Validator;
use DB, Hash, Mail;
use Illuminate\Support\Facades\Password;
use Illuminate\Mail\Message;

class UsuariosController extends Controller
{
      public function show()
      {
            return new UsuariosResource(Usuarios::all());
      }

      public function login(Request $request)
      {
            $rules = [
                  'email' => 'required|email',
                  'password' => 'required',
            ];
            $input = $request->only('email', 'password');


         
            $validator = Validator::make($input, $rules);
            if ($validator->fails()) {
                  $error = $validator->messages()->toJson();
                  return response()->json(['success' => false, 'error' => $error]);
            }


            $credentials = [
                  'email' => $request->email,
                  'senha' => md5($request->password),
            ];


            $result = Usuarios::where($credentials)->get();

            try {
            // attempt to verify the credentials and create a token for the user
                  if ($result) {
                        return response()->json(['success' => true, 'data' => $result[0]], 200);
                  } else {
                        return response()->json(['success' => false, 'message' => 'usuario não encontrado']);

                  }
            } catch (JWTException $e) {
            // something went wrong whilst attempting to encode the token
                  return response()->json(['success' => false, 'error' => 'could_not_create_token'], 500);
            }

      }
}