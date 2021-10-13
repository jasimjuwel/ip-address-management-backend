<?php

namespace App\Models;

use App\Traits\RecordSignature;
use Illuminate\Database\Eloquent\Model;

class IpTable extends Model
{
    use RecordSignature;

    protected $fillable = [
        'ip_number', 'ip_address', 'created_by', 'updated_by'
    ];

    public function getCreatedAtAttribute()
    {
        return dateTimeConvertDBtoForm($this->attributes['created_at']);
    }
}
