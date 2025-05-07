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
        Schema::table('student_mapped_classes', function (Blueprint $table) {
            $table->date('start_date')->after('class')->nullable();
            $table->date('end_date')->after('start_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('student_mapped_classes', function (Blueprint $table) {
            $table->dropColumn(['start_date', 'end_date']);
        });
    }
};
