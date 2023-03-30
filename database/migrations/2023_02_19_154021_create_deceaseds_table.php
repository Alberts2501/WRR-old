<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('deceaseds', function (Blueprint $table) {
            $table->id('deceased_id');
            $table->date('birthday');
            $table->date('date_of_death');
            $table->date('funeral_day');
            $table->bigIncrements('man_id');
            $table->bigIncrements('net_user_id');
            $table->foreign('man_id')->references('men')->on('man_id');
            $table->foreign('net_user_id')->references('net_users')->on('net_user_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('deceaseds');
    }
};
