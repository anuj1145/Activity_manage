
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin & Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />
	<link rel="canonical" href="https://demo-basic.adminkit.io/" />

	<title>Admin Dashboard</title>
	<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css' rel='stylesheet' />
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js'></script>

	<link href="{{ asset('assets/css/app.css') }}" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="{{ url('/') }}">
					<span class="align-middle">Admin Dashboard</span>
				</a>
				<ul class="sidebar-nav">
					<li class="sidebar-header">Pages</li>
					<li class="sidebar-item active">
						<a class="sidebar-link" href="{{ url('/') }}">
							<i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="{{ route('login') }}">
							<i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Sign In</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="{{ route('register') }}">
							<i class="align-middle" data-feather="user-plus"></i> <span class="align-middle">Sign Up</span>
						</a>
					</li>
					<li class="sidebar-header">Activities Management</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="{{ route('activities.create') }}">
							<i class="align-middle" data-feather="check-square"></i> <span class="align-middle">Add Activity</span>
						</a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="{{ route('activities.list') }}">
							<i class="align-middle" data-feather="align-left"></i> <span class="align-middle">Activities</span>
						</a>
					</li>

					<li class="sidebar-item">
						<a class="sidebar-link" href="{{ route('users') }}">
							<i class="align-middle" data-feather="align-left"></i> <span class="align-middle">Users</span>
						</a>
					</li>
				</ul>
			</div>
		</nav>

		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle">
					<i class="hamburger align-self-center"></i>
				</a>
				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="bell"></i>
									<span class="indicator">4</span>
								</div>
							</a>
							<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="alertsDropdown">
								<div class="dropdown-menu-header">4 New Notifications</div>
								<div class="list-group">
									<!-- Notification items -->
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">Show all notifications</a>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-bs-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="message-square"></i>
								</div>
							</a>
							<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="messagesDropdown">
								<div class="dropdown-menu-header">4 New Messages</div>
								<div class="list-group">
									<!-- Message items -->
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">Show all messages</a>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">

								<img src="{{ asset('assets/img/avatars/avatar.jpg') }}" class="avatar img-fluid rounded me-1" alt="Charles Hall" /> <span class="text-dark"></span>
							</a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
								<a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" id="logout">Log out</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>

			<main class="content">
				<div class="container-fluid p-0">
					<div id="calendar"></div>

				
				</div>
			</main>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>Admin Dashboard</strong></a> &copy; 2023
							</p>
						</div>
						<div class="col-6 text-end">
							<ul class="list-inline">
								<li class="list-inline-item"><a class="text-muted" href="#">Support</a></li>
								<li class="list-inline-item"><a class="text-muted" href="#">Help Center</a></li>
								<li class="list-inline-item"><a class="text-muted" href="#">Privacy</a></li>
								<li class="list-inline-item"><a class="text-muted" href="#">Terms</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="{{ asset('assets/js/app.js') }}"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

$(document).ready(function() {
    $('#logout').on('click', function(e) {
        e.preventDefault(); // Prevent the default anchor behavior


		$.ajax({
    url: 'http://localhost/ActivityManage/public/api/logout', // Correct URL
    type: 'POST',
    contentType: 'application/json', // Set content type to application/json
    headers: {
        'Authorization': 'Bearer ' + localStorage.getItem('token'), // Include JWT token
    },
    success: function(response) {
        alert('Logged out successfully.');
        localStorage.removeItem('token'); // Clear token from localStorage
        window.location.href = "{{route('login')}}"; // Redirect after logout
    },
    error: function(xhr) {
        console.error(xhr.responseText);
        let errorMessage = 'Logout failed: ';
        if (xhr.responseJSON && xhr.responseJSON.message) {
            errorMessage += xhr.responseJSON.message;
        } else {
            errorMessage += xhr.statusText;
        }
        alert(errorMessage);
    }
});









    });
});
</script>

	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var calendarEl = document.getElementById('calendar');
			var calendar = new FullCalendar.Calendar(calendarEl, {
				initialView: 'dayGridMonth',
				dateClick: function(info) {
					window.location.href = "{{ route('activities.create') }}?date=" + info.dateStr;
				},
				events: [
					@foreach($activities as $activity) 
					{
						title: '{{ $activity->title }}',
						start: '{{ $activity->date }}',
						allDay: true
					},
					@endforeach
				]
			});
			calendar.render();
		});
	</script>
</body>

</html>
