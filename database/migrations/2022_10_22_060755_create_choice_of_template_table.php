<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChoiceOfTemplateTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('choice_of_template', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('template_id')->nullable();
            $table->foreign('template_id')->references('id')->on('templates')->onDelete('cascade');
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
        Schema::dropIfExists('choice_of_template');
    }
}
