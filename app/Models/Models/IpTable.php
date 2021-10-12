<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class IpTable extends Model
{
    protected $fillable = [
        'ip_number', 'ip_address', 'created_by', 'updated_by'
    ];
}
