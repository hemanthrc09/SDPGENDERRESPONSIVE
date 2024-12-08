<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <style>
        /* Background image styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('background-image.jpg'); /* Replace with the actual image path */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-color: #a3e4d7;
            margin: 0;
            padding: 0;
        }
/* Navbar container */
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
        /* Container styling */
        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white background */
            margin: 5% auto;
            padding: 20px;
            width: 80%;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #4CAF50; /* Green color */
            font-size: 2.5em;
        }

        p {
            font-size: 1.2em;
            color: #555; /* Dark grey color */
            line-height: 1.6;
        }

        .highlight {
            color: #FF5722; /* Orange color */
            font-weight: bold;
        }

        .team-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 20px;
        }

        .team-member {
            text-align: center;
            margin: 15px;
            flex-basis: 30%;
        }

        .team-member img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .team-member h3 {
            color: #333;
            margin: 10px 0 5px;
        }

        .team-member p {
            font-size: 0.9em;
            color: #777;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 0.9em;
            color: #999;
        }
    </style>
</head>
<body>
<div class="navbar">
       
<h1>WELCOME TO ABOUT US PAGE</h1>
        <!-- Links -->
        <div class="nav-links">
      
            <a href="adminunderstand.jsp">Understand</a>
            
            <a href="admindashboard.jsp">Admin Dashboard</a>
        </div>

        <!-- Hamburger menu for mobile -->
        <div class="hamburger" onclick="toggleMenu()">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <div class="container">
        <h1>About Us</h1>
        <p>
            Welcome to the <span class="highlight">Gender Responsive Mechanism</span> platform, a comprehensive solution designed to empower individuals and create a safe, inclusive environment for all. 
            Our mission is to address gender-related challenges and provide holistic support for those in need.
        </p>

        <p>
            This <span class="highlight">Admin Module</span> plays a pivotal role in ensuring smooth operations, managing user data, and facilitating effective communication between survivors, counselors, and legal advisors. 
            We believe in <span class="highlight">action-driven solutions</span> to promote equality and justice.
        </p>

        <div class="team-section">
            <div class="team-member">
                <img src="image16.jpg" alt="Admin 1"> <!-- Replace with actual image path -->
                <h3>Victoria</h3>
                <p>Head of Operations</p>
            </div>
            <div class="team-member">
                <img src="image15.jpeg" alt="Admin 2"> <!-- Replace with actual image path -->
                <h3>Jane Smith</h3>
                <p>Support Coordinator</p>
            </div>
            <div class="team-member">
                <img src="image17.jpg" alt="Admin 3"> <!-- Replace with actual image path -->
                <h3>Alexa</h3>
                <p>Technology Lead</p>
            </div>
        </div>

        <p>
            Together, we aim to create a gender-responsive ecosystem where every voice matters. Your contributions and collaboration are what make this initiative successful.
        </p>

        <div class="footer">
            <p>© 2024 Gender Responsive Mechanism. All Rights Reserved.</p>
        </div>
    </div>
</body>
</html>
