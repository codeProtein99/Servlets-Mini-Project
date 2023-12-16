<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
    <h1 class="mx-auto text-center" style="font-size: 3rem; margin-bottom: 3%;">Dashboard</h1>
    <div class="card">
        <div class="card-body">
            <h3 class="display-4">User Details</h3>
            <h5 id="msg"></h5>

            <div id="userDetails">
                <!-- User details will be displayed here -->
            </div>
        </div>
    </div>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="login-script.js"></script>
</body>
</html>