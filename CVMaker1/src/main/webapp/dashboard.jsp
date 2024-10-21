<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cvmaker.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard - CVMaker</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f0f8ff;
            color: #333;
        }
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            color: #4a4a4a;
            margin-bottom: 30px;
        }
        .btn-primary {
            background-color: #6a5acd;
            border-color: #6a5acd;
        }
        .btn-primary:hover {
            background-color: #483d8b;
            border-color: #483d8b;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <% 
           User user = (User) session.getAttribute("user");
           if (user != null) { 
        %>
            <h2 class="text-center">Welcome, <%= user.getUsername() %>!</h2>
            <p class="text-center">This is your CVMaker dashboard. Here you can create and manage your resumes.</p>
            <div class="text-center mb-4">
                <a href="createResume.jsp" class="btn btn-primary">Create New Resume</a>
            </div>

            <!-- Display success or error messages -->
            <% if (request.getAttribute("message") != null) { %>
                <div class="alert alert-success">
                    <strong>Success!</strong> <%= request.getAttribute("message") %>
                </div>
            <% } %>
            <% if (request.getAttribute("error") != null) { %>
                <div class="alert alert-danger">
                    <strong>Error:</strong> <%= request.getAttribute("error") %>
                </div>
            <% } %>

            <!-- Download resume link if available -->
            <% if (request.getAttribute("downloadLink") != null) { %>
                <div class="alert alert-success">
                    <strong>Resume Generated!</strong> You can download your resume below:
                    <br/>
                    <a href="<%= request.getAttribute("downloadLink") %>" class="btn btn-success mt-2" download>Download PDF</a>
                </div>
            <% } %>
        <% } else { %>
            <p class="text-center">You are not logged in. Please <a href="login.jsp">login</a> to access the dashboard.</p>
        <% } %>
    </div>
</body>
</html>
