<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Brackets\Translatable\Traits\HasTranslations;

class EventCalendar extends Model
{
use HasTranslations;
    protected $table = 'event_calendar';

    protected $fillable = [
        'title',
        'link',
        'event_time',
        'event_location',
        'published_at',
        'enabled',
    
    ];
    
    
    protected $dates = [
        'event_time',
        'published_at',
        'created_at',
        'updated_at',
    
    ];
    // these attributes are translatable
    public $translatable = [
        'title',
        'link',
        'event_location',
    
    ];
    
    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/event-calendars/'.$this->getKey());
    }
}
