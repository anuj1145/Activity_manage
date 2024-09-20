<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Activity;
use App\Models\UserActivity;
use Carbon\Carbon;

class ActivityApiController extends Controller
{
    // Get logged-in user's activities within a date range
    public function getUserActivities(Request $request)
    {
        $request->validate([
            'start_date' => 'required|date',
            'end_date'   => 'required|date|after_or_equal:start_date',
        ]);

        $user = $request->user();
        $startDate = Carbon::parse($request->start_date)->startOfDay();
        $endDate   = Carbon::parse($request->end_date)->endOfDay();

        // Fetch global activities within range
        $globalActivities = Activity::whereBetween('date', [$startDate, $endDate])->get();

        // Fetch user-specific overrides within range
        $userOverrides = UserActivity::where('user_id', $user->id)
            ->whereBetween('date', [$startDate, $endDate])
            ->get();

        // Merge activities
        $mergedActivities = $globalActivities->map(function ($activity) use ($userOverrides) {
            $override = $userOverrides->firstWhere('activity_id', $activity->id);
            return $override ? [
                'id'          => $override->id,
                'date'        => $override->date,
                'title'       => $override->title,
                'description' => $override->description,
                'image'       => $override->image ? asset('storage/' . $override->image) : null,
                'is_override' => true,
            ] : [
                'id'          => $activity->id,
                'date'        => $activity->date,
                'title'       => $activity->title,
                'description' => $activity->description,
                'image'       => $activity->image ? asset('storage/' . $activity->image) : null,
                'is_override' => false,
            ];
        });

        // Add user-specific activities without global counterparts
        $userSpecific = $userOverrides->whereNull('activity_id')->map(function ($activity) {
            return [
                'id'          => $activity->id,
                'date'        => $activity->date,
                'title'       => $activity->title,
                'description' => $activity->description,
                'image'       => $activity->image ? asset('storage/' . $activity->image) : null,
                'is_override' => false,
            ];
        });

        $allActivities = $mergedActivities->merge($userSpecific)->sortBy('date')->values();

        return response()->json([
            'activities' => $allActivities,
        ]);
    }
}
