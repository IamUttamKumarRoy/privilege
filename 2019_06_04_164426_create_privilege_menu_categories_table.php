<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePrivilegeMenuCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('privilege_menu_categories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('category_name',30);
            $table->tinyInteger('precedence')->unsigned()->nullable();
            $table->tinyInteger('ordering')->unsigned()->nullable();
            $table->tinyInteger('status')->unsigned()->nullable();
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
        Schema::dropIfExists('privilege_menu_categories');
    }
}
