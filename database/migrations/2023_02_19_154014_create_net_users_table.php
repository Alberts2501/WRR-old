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
        Schema::create('net_users', function (Blueprint $table) {
            $table->id('net_user_id');
            $table->timestamp('date_of_connection');
            $table->bigInteger('living_id');
            $table->foreign('living_id')->references('living_id')->on('livings');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('net_users');
    }
};
