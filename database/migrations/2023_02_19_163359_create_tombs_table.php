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
        Schema::create('tombs', function (Blueprint $table) {
            $table->id('tomb_id');
            $table->smallInteger('place_nr');
            $table->bigInteger('deceased_id');
            $table->foreign('deceased_id')->references('deceased_id')->on('deceaseds');
            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tombs');
    }
};
