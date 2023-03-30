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
        Schema::create('performers', function (Blueprint $table) {
            $table->id('performer_id');
            $table->string('scope_of_work', 27);
            $table->char('workload', 5);
            $table->timestamp('job_acceptance_date');
            $table->bigIncrements('living_id');
            $table->foreign('living_id')->references('livings')->on('living_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('performers');
    }
};
