<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use Illuminate\Http\Request;
use App\Models\User;
use Carbon\Carbon;
use App\Models\UserActivity;
use Illuminate\Support\Facades\Auth;

class ActivityController extends Controller
{


    public function index()
    {
        $currentDate = Carbon::now();
        $startOfMonth = $currentDate->copy()->startOfMonth();
        $endOfMonth = $currentDate->copy()->endOfMonth();

        // Generate a collection of days for the month
        $days = [];
        for ($date = $startOfMonth->copy(); $date->lte($endOfMonth); $date->addDay()) {
            $days[] = $date->copy();
        }

        // Group days into weeks
        $weeks = [];
        while (count($days) > 0) {
            $weeks[] = array_splice($days, 0, 7); // Take 7 days for a week
        }
        // Fetch activities for the current month
        $activities = UserActivity::whereBetween('date', [$startOfMonth, $endOfMonth])->get();
         
        return view('admin.dashboard', compact('activities', 'weeks'));
    }

    public function getUsers()
    {
        $users = User::with('userActivities')->get();

        return view('admin.index', compact('users'));
    }
    public function list()
    {
        // $activities = UserActivity::all();
        $userActivities = UserActivity::with('user')->get();
        return view('admin.activities.index', compact('userActivities'));
    }

    public function create(Request $request)
    {
        $date = $request->query('date');
        $users = User::all();
        return view('admin.activities.create', compact('date', 'users'));
    }


    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'image' => 'image|nullable',
            'date' => 'required|date',
            'user_id' => 'required|exists:users,id'
        ]);

        // Check how many activities exist for the given date
        $existingActivitiesCount = Activity::where('date', $request->date)->count();

        if ($existingActivitiesCount >= 4) {
            return redirect()->back()->with('error', 'You can only add 4 activities per day.')->withInput();
        }

        $activity = new UserActivity();
        $activity->title = $request->title;
        $activity->description = $request->description;
        $activity->user_id = $request->user_id;
        $activity->date = $request->date;

        if ($request->hasFile('image')) {
            $activity->image = $request->file('image')->store('images', 'public');
        }


        $activity->save();

        return redirect()->route('activities.list')->with('success', 'Activity added successfully.');
    }


    public function edit($id)
    {
        // Find the activity by ID
        $activity = UserActivity::findOrFail($id);

        // Pass the activity to the view
        return view('admin.activities.edit', compact('activity'));
    }

    public function update(Request $request, $id)
    {
        // Find the user activity by ID
        $activity = UserActivity::findOrFail($id);

        // Validate the request
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'image' => 'image|nullable',
            'date' => 'required|date',
        ]);

        // Handle image upload
        if ($request->hasFile('image')) {
            // Store the new image and update the activity's image path
            $activity->image = $request->file('image')->store('images', 'public');
        }

        // Update user activity attributes
        $activity->title = $request->input('title');
        $activity->description = $request->input('description');
        $activity->date = $request->input('date');
        $activity->save(); // Save the updated activity

        return redirect()->route('activities.list')->with('success', 'Activity updated successfully.');
    }




    public function destroy($id)
    {
        // Find the activity by ID
        $activity = UserActivity::findOrFail($id); // Use findOrFail to handle not found

        // Delete the activity
        $activity->delete();

        // Redirect with a success message
        return redirect()->route('activities.list')->with('success', 'Activity deleted successfully.');
    }

    public function getActivitiesByDateRange(Request $request)
    {
        // Validate the request
        $request->validate([
            'start_date' => 'required|date_format:Y-m-d',
            'end_date' => 'required|date_format:Y-m-d|after_or_equal:start_date',
        ]);

        // Convert the date format
        $startDate = Carbon::createFromFormat('Y-m-d', $request->input('start_date'));
        $endDate = Carbon::createFromFormat('Y-m-d', $request->input('end_date'));

        // Get the logged-in user's activities within the specified date range
        $activities = UserActivity::where('user_id', auth()->id())
            ->whereBetween('date', [$startDate, $endDate])
            ->get();

        return response()->json($activities);
    }
}
