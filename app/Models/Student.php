<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    public function latestMappedClass()
    {
        return $this->hasOne(StudentMappedClass::class)->latestOfMany();
    }

}
