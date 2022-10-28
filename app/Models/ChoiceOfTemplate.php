<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChoiceOfTemplate extends Model
{
    protected $table = 'choice_of_template';

    protected $fillable = [
        'template_id',
    
    ];
    
    
    protected $dates = [
        'created_at',
        'updated_at',
    
    ];
    
    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/choice-of-templates/'.$this->getKey());
    }

    public function template() {
        return $this->belongsTo(Template::class);
    }
}
