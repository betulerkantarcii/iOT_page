<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Brackets\Translatable\Traits\HasTranslations;

class MenuContent extends Model
{
use HasTranslations;
    protected $table = 'menu_content';

    protected $fillable = [
        'title',
        'description',
        'enabled',
        'menu_id',
    
    ];
    
    
    protected $dates = [
        'created_at',
        'updated_at',
    
    ];
    // these attributes are translatable
    public $translatable = [
        'title',
        'description',
    
    ];
    
    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/menu-contents/'.$this->getKey());
    }

    public function menu() {
        return $this->belongsTo(Menu::class);
    }
}
