<?php

namespace App\Models\Models;

use Illuminate\Database\Eloquent\Model;

class AuditLog extends Model
{
    protected $fillable = [
        'reference_table', 'reference_id', 'event_type', 'request_body', 'created_by', 'updated_by'
    ];
}
