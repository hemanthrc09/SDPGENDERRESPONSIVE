<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Navigation Bar</title>
    <style>
        /* Navbar styling */
        nav {
            background-color: #1e88e5;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        nav h1 {
            font-size: 1.8rem;
            margin: 0;
            color: #fff;
        }

        nav ul {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            margin: 0 10px;
        }

        nav ul li a {
            text-decoration: none;
            color: #fff;
            padding: 10px 15px;
            background: #43a047;
            border-radius: 5px;
            font-size: 1rem;
            transition: background 0.3s ease-in-out;
        }

        nav ul li a:hover {
            background: #2e7d32;
        }

        /* Dropdown menu styling */
        nav ul li ul {
            display: none;
            position: absolute;
            background-color: #43a047;
            border-radius: 5px;
            padding: 10px;
            list-style: none;
            margin-top: 10px;
        }

        nav ul li:hover ul {
            display: block;
        }

        nav ul li ul li {
            margin: 5px 0;
        }

        nav ul li ul li a {
            background: none;
            padding: 5px 10px;
            color: #fff;
        }

        nav ul li ul li a:hover {
            background: #2e7d32;
        }

        /* User profile section */
        .user-profile {
            display: flex;
            align-items: center;
            color: #fff;
        }

        .user-profile img {
            border-radius: 50%;
            width: 40px;
            height: 40px;
            margin-right: 10px;
        }

        .user-profile span {
            font-size: 1rem;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav>
        <h5>WELCOME TO ADMIN PAGE</h5>
        <ul>
            <li><a href="adminaboutus.jsp">Aboutus</a></li>
            <li><a href="#">Dashboard</a></li>
            <li>
                <a href="#">Manage</a>
                <ul>
                    <li><a href="#">Users</a></li>
                    <li><a href="#">Reports</a></li>
                    <li><a href="#">Settings</a></li>
                </ul>
            </li>
            <li><a href="#">Counsellors</a></li>
            <li><a href="#">Legal Assistance</a></li>
        </ul>
        <div class="user-profile">
            <img src="user-profile.jpg" alt="User Profile">
            <span>Admin</span>
        </div>
    </nav>
</body>
</html>
