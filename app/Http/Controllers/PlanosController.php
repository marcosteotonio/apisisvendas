<?php

namespace App\Http\Controllers;

use App\Model\Planos;
use App\Http\Resources\Planos as PlanosResource;

class PlanosController extends Controller
{
      public function show()
      {
            return new PlanosResource(Planos::all());
      }
}