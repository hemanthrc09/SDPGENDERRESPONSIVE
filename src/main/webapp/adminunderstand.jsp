<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gender-Responsive Mechanism</title>
    <style>
        /* General page styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f7dc6f;
        }

       .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(106, 13, 131, 0.9); /* Semi-transparent purple */
            padding: 10px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: sticky;
            top: 0;
            z-index: 10;
        }
         /* Navbar links */
        .navbar .nav-links {
            display: flex;
            gap: 15px;
        }

        .navbar .nav-links a {
            text-decoration: none;
            color: white;
            font-size: 1rem;
            padding: 8px 12px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar .nav-links a:hover {
            background-color: #5fc8c2; /* Green hover effect */
        }
        /* Content container */
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            padding: 50px 20px;
            max-width: 900px;
            margin: 50px auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .container h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: #333;
        }

        .container p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #666;
        }

        /* Buttons */
        .button-group {
            display: flex;
            flex-direction: column;
            gap: 15px;
            width: 100%;
        }

        .button-group a {
            text-decoration: none;
            background-color: #6a0d83;
            color: white;
            font-size: 1rem;
            padding: 15px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            text-align: center;
        }

        .button-group a:hover {
            background-color: #5fc8c2;
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #f1f1f1;
            font-size: 0.9rem;
            color: #666;
            margin-top: 50px;
        }

        /* Side visuals */
        .background-pattern {
            position: absolute;
            right: 0;
            top: 0;
            width: 35%;
            height: 100%;
            background: linear-gradient(135deg, #6a0d83, #5fc8c2);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        
        <div class="nav-links">
            <a href="adminoverview.jsp">Overview</a>
            <a href="adminsteps.jsp">Steps</a>
            <a href="admindashboard.jsp">ADMIN DASHBOARD</a>
            <a href ="VisitorHome.jsp">HOME</a>
            <a href="adminvisualization.jsp">Pie Chart</a>
            <a href="adminresources.jsp">Resources</a>
            <a href="adminquiz.jsp">Self-Assessment Quiz</a>
        </div>
    </div>

   
    <!-- Main Content -->
    <div class="container">
        <h1>Welcome to the Gender-Responsive Mechanism Hub</h1>
        <p>
            Explore how to implement effective gender-responsive mechanisms in your organization. 
            Understand the challenges, key steps, and resources to empower gender equality and justice.
        </p>
        <div class="button-group">
            <a href="adminoverview.jsp">Learn the Basics of Gender-Responsive Mechanisms</a>
            <a href="adminsteps.jsp">Discover the Implementation Process</a>
            <a href="adminresources.jsp">Access Resources to Support Your Journey</a>
            <a href="adminquiz.jsp">Test Your Understanding with Our Quiz</a>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 All rights reserved. Powered by Gender Equality Initiatives.
    </div>
</body>
</html>
