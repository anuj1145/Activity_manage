<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
    <meta name="author" content="AdminKit">
    <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="shortcut icon" href="img/icons/icon-48x48.png" />

    <link rel="canonical" href="https://demo-basic.adminkit.io/pages-sign-up.html" />

    <title>Sign Up</title>

    <link href="{{asset('assets/css/app.css')}}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <main class="d-flex w-100">
        <div class="container d-flex flex-column">
            <div class="row vh-100">
                <div class="col-sm-10 col-md-8 col-lg-6 col-xl-5 mx-auto d-table h-100">
                    <div class="d-table-cell align-middle">

                        <div class="text-center mt-4">
                            <h1 class="h2">Get started</h1>
                            <p class="lead">
                                Start creating the best possible user experience for you customers.
                            </p>
                        </div>

                        <div class="card">
                            <div id="response"></div>
                            <div class="card-body">
                                <div class="m-sm-3">
                                    <form id="registrationForm">
                                        <div class="mb-3">
                                            <label class="form-label">Full name</label>
                                            <input class="form-control form-control-lg" type="text" id="name" name="name" placeholder="Enter your name" />
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Email</label>
                                            <input class="form-control form-control-lg" id="email" type="email" name="email" placeholder="Enter your email" />
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Password</label>
                                            <input class="form-control form-control-lg" id="password" type="password" name="password" placeholder="Enter password" />
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Confirm Password</label>
                                            <input class="form-control form-control-lg" id="password_confirmation" type="password" name="password_confirmation" placeholder="Enter password" />
                                        </div>
                                        <div class="d-grid gap-2 mt-3">
                                            <button type="submit" id="register" class="btn btn-lg btn-primary">Sign up</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="text-center mb-3">
                            Already have account? <a href="{{route('login')}}">Log In</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>


    <script>
        $(document).ready(function() {
            $('#registrationForm').on('submit', function(event) {
                event.preventDefault(); // Prevent the default form submission

                // Gather form data
                const formData = {
                    name: $('#name').val(),
                    email: $('#email').val(),
                    password: $('#password').val(),
                    password_confirmation: $('#password_confirmation').val() // Include confirmation password
                };

                // Send AJAX request
                $.ajax({
                    url: 'http://localhost/ActivityManage/public/api/register',
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify(formData),
                    success: function(response) {
                        $('#response').html('<p>Registration successful!</p>');
                        $('#registrationForm')[0].reset();
                    },
                    error: function(xhr, status, error) {
                        // Parse the JSON response
                        const errorResponse = JSON.parse(xhr.responseText);
                        let errorMessages = '';

                        // Loop through the errors and create a formatted string
                        $.each(errorResponse.errors, function(field, messages) {
                            messages.forEach(function(message) {
                                errorMessages += `<p style="color:red;margin:6px;">${message}</p>`;
                            });
                        });

                        // Display the error messages
                        $('#response').html(errorMessages);
                    }
                });
            });
        });
    </script>
</body>

</html>