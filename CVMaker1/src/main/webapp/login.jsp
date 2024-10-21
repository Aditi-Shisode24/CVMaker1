<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - CVMaker</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f7f9fc;
            font-family: 'Arial', sans-serif;
        }
        .login-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            margin: 100px auto;
        }
        h2 {
            color: #4a4a4a;
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group label {
            color: #4a4a4a;
        }
        .btn-primary {
            background-color: #81c784;
            border-color: #81c784;
        }
        .btn-primary:hover {
            background-color: #66bb6a;
            border-color: #66bb6a;
        }
        .alert {
            text-align: center;
        }
        .register-link {
            text-align: center;
            display: block;
            margin-top: 15px;
        }
        .register-link a {
            color: #64b5f6;
        }
        .register-link a:hover {
            color: #42a5f5;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-container">
            <h2>Login to CVMaker</h2>
            <form action="login" method="post">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
            <% if(request.getAttribute("error") != null) { %>
                <div class="alert alert-danger mt-3">
                    <%= request.getAttribute("error") %>
                </div>
            <% } %>
            <p class="register-link">Don't have an account? <a href="register.jsp">Register here</a></p>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
