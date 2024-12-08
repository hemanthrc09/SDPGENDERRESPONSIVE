<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Counselor Registration Success</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #fff;
        }

        /* Header Styles */
        h2 {
            text-align: center;
            font-size: 30px;
            margin-top: 20px;
            color: #ffcc00; /* Highlighting the title */
        }

        h3 {
            font-size: 24px;
            color: #fff;
        }

        /* Content Container */
        .content {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 15px;
            padding: 30px;
            width: 50%;
            margin: 30px auto;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .content p {
            font-size: 18px;
            color: #333;
            margin: 10px 0;
        }

        /* Button and Links */
        a {
            display: inline-block;
            background: #2575fc;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            margin-top: 15px;
        }

        a:hover {
            background: #6a11cb;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %> <!-- Include the navigation bar -->

    <h2>🎉 Counselor Registration Success!</h2>
    
    <div class="content">
        <h3>${message}</h3> <!-- Display registration success message here -->

        <p>Congratulations! Your registration as a counselor was successful.</p>
        <p>We are excited to have you join us in making a difference.</p>
        
        <a href="counsellorlogin.jsp">Go to Login Page</a> <!-- Link to Login Page -->
    </div>
</body>
</html>
