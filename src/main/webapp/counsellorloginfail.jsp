<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* General Styles */
        body {
            font-family: 'Poppins', Arial, sans-serif;
            background: url('image6.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            position: relative;
        }

        /* Gradient Overlay */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg,  rgba(133, 193, 233, 0.7), rgba(212, 172, 13, 0.9));
            z-index: 1;
        }

        .container {
            position: relative;
            z-index: 2;
            background: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            max-width: 400px;
            width: 90%;
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            color: #ffc107;
        }

        p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #fff;
        }

        a {
            display: inline-block;
            text-decoration: none;
            font-size: 1rem;
            font-weight: bold;
            color: #66FF00;
            background: #f44336;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background 0.3s ease-in-out;
        }

        a:hover {
            background: #d32f2f;
        }

        .message {
            font-size: 1.1rem;
            margin-bottom: 20px;
            color: #ffccbc;
            font-style: italic;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Failed</h1>
        <p class="message"><c:out value="${message}" /></p>
        <p>Oops! Something went wrong. Please try again.</p>
        <a href="counsellorlogin.jsp">Try Again</a>
    </div>
</body>
</html>
