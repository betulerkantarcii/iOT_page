<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Videolink extends Model
{
    protected $table = 'videolink';

    protected $fillable = [
        'video_link',
    
    ];
    
    
    protected $dates = [
    
    ];
    public $timestamps = false;
    
    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/videolinks/'.$this->getKey());
    }
}
