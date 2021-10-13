<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AuditLog extends Model
{
    protected $fillable = [
        'log_time', 'request_path', 'request_id', 'post_json', 'final_response', 'request_ip'
    ];

    public function getLogTimeAttribute()
    {
        return dateTimeConvertDBtoForm($this->attributes['log_time']);
    }
}
