<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cvmaker.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Resume - CVMaker</title>
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
            <h2 class="text-center">Create Your Resume</h2>
            <form action="createResume" method="post" enctype="multipart/form-data">
                <!-- Personal Information -->
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="tel" class="form-control" id="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" class="form-control" id="address" name="address" required>
                </div>

                <!-- About Me -->
                <div class="form-group">
                    <label for="aboutMe">About Me:</label>
                    <textarea class="form-control" id="aboutMe" name="aboutMe" rows="4" placeholder="Tell something about yourself..." required></textarea>
                </div>

                <!-- Profile Picture -->
                <div class="form-group">
                    <label for="profilePicture">Profile Picture:</label>
                    <input type="file" class="form-control-file" id="profilePicture" name="profilePicture" accept="image/*">
                </div>

                <!-- Skills -->
                <div class="form-group">
                    <label for="skills">Skills (comma-separated):</label>
                    <input type="text" class="form-control" id="skills" name="skills" required>
                </div>

                <!-- Work Experience -->
                <div class="form-group">
                    <label for="workExperience">Work Experience:</label>
                    <textarea class="form-control" id="workExperience" name="workExperience" rows="4" required></textarea>
                </div>

                <!-- Education -->
                <div class="form-group">
                    <label for="education">Education:</label>
                    <textarea class="form-control" id="education" name="education" rows="4" required></textarea>
                </div>

                <!-- Template Selection -->
                <div class="form-group">
                    <label for="template">Choose a Template:</label>
                    <select class="form-control" id="template" name="template" required>
                        <option value="template1">Professional Template</option>
                        <option value="template2">Creative Template</option>
                        <option value="template3">Simple Template</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Generate Resume</button>
            </form>
        <% } else { %>
            <p class="text-center">You are not logged in. Please <a href="login.jsp">login</a> to create a resume.</p>
        <% } %>
    </div>
</body>
</html>
