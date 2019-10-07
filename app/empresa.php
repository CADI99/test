<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class empresa extends Model
{
    protected $fillable = ['nombre','estado_empresa','dueño','descripcion','estado','pais'];
    public function dueño()
    {
        return $this->BelongsTo('App\empresa', 'dueño');
        
    }
}
