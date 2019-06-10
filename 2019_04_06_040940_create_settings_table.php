<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->smallInteger('id')->unsigned()->autoIncrement();
            $table->tinyInteger('option_type')->unsigned()->nullable();
            $table->string('option_group',50)->nullable();
            $table->string('option_key',50);
            $table->string('option_title',50)->nullable();
            $table->text('option_value')->nullable();
            $table->smallInteger('ordering')->unsigned()->nullable();
            $table->tinyInteger('status')->unsigned()->nullable();
            $table->integer('created_by')->nullable();
            $table->timestamp('created_at')->nullable();
            $table->integer('updated_by')->nullable();
            $table->timestamp('updated_at')->nullable();
            $table->string('terminal',100)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('settings');
    }
}
