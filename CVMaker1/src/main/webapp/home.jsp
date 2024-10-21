<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to CVMaker</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f7fa;
        }

        /* Container Styling */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 50px 20px;
            text-align: center;
        }

        /* Header Styling */
        header {
            background-color: #2c3e50;
            padding: 20px 0;
            color: #ecf0f1;
            font-size: 24px;
            text-align: center;
        }

        /* Main Heading */
        h1 {
            color: #2c3e50;
            font-size: 48px;
            margin-bottom: 20px;
        }

        /* Subheading */
        p {
            color: #7f8c8d;
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 40px;
        }

        /* Login/Register Buttons */
        .btn-container {
            margin-top: 40px;
        }

        .btn {
            text-decoration: none;
            padding: 12px 25px;
            color: white;
            background-color: #3498db;
            border-radius: 5px;
            margin: 0 15px;
            transition: background-color 0.3s ease;
            font-size: 16px;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        /* Project Info Section */
        .info-section {
            background-color: #ecf0f1;
            padding: 40px 20px;
            margin-top: 40px;
            border-radius: 10px;
        }

        .info-section h2 {
            font-size: 36px;
            color: #2c3e50;
        }

        .info-section p {
            color: #7f8c8d;
            font-size: 18px;
            margin: 20px 0;
            line-height: 1.8;
        }

        /* Footer Styling */
        footer {
            background-color: #2c3e50;
            color: white;
            padding: 10px 0;
            position: absolute;
            bottom: 0;
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        Welcome to CVMaker - Create Your Professional Resume
    </header>

    <div class="container">
        <h1>Create Your Dream Resume</h1>
        <p>CVMaker is your ultimate tool for creating a sleek, professional resume with ease. Choose from multiple templates and generate your resume in PDF format. Login or register to get started!</p>

        <!-- Buttons for Login and Register -->
        <div class="btn-container">
            <a href="login.jsp" class="btn">Login</a>
            <a href="register.jsp" class="btn">Register</a>
        </div>

        <!-- Info about the Project -->
        <div class="info-section">
            <h2>About CVMaker</h2>
            <p>
                CVMaker is designed to help you generate high-quality resumes that stand out. Our platform provides users with multiple templates to choose from, whether you're looking for something creative or professional. 
                Additionally, we provide easy profile management, where you can upload your profile picture, update contact details, and store multiple versions of your resume for different job applications.
            </p>
            <p>
                With easy login and registration, you can start building your resume quickly. The system is user-friendly and intuitive, ensuring that you can create and download your resume in just a few minutes.
            </p>
        </div>
    </div>

    <footer>
        &copy; 2024 CVMaker. All rights reserved.
    </footer>
</body>
</html>