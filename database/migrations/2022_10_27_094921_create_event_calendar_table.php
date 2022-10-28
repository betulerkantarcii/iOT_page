<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEventCalendarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('event_calendar', function (Blueprint $table) {
            $table->id();
            $table->jsonb('title');
            $table->jsonb('link')->nullable();
            $table->datetime('event_time');
            $table->jsonb('event_location');
            $table->date('published_at')->nullable();
            $table->boolean('enabled')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('event_calendar');
    }
}
