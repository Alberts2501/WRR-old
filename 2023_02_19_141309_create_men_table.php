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
        Schema::create('men', function (Blueprint $table) {
            $table->id('man_id');
            $table->string('man_name', 35);
            $table->string('man_surname', 35);
            $table->char('personal_identification_code', 12);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('men');
    }
};
