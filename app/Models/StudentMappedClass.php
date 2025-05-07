<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StudentMappedClass extends Model
{
    public function standard()
    {
        return $this->belongsTo(Standard::class, 'class_id');
    }

}
