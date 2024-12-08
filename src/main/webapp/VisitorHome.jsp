<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GENDER RESPONSIVE MECHANISM</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to CSS for styling -->
    <style>
        /* Add a background image and overlay */
        body {
    background: url('image4.jpg');
    background-size: cover;
    color: #fff;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
        

        header {
            text-align: center;
            padding: 20px;
            background: rgba(0, 0, 0, 0.7);
            margin-bottom: 20px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }

        header h1 {
            font-size: 2.5em;
            margin: 0;
            color: #FFD700; /* Gold Color */
        }

        header p {
            font-size: 1.2em;
            margin-top: 10px;
            color: #ccc;
        }

        /* Styling the tile container */
        .tile-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            padding: 20px;
        }

        .tile {
            width: 70%;
            padding: 20px;
            background: linear-gradient(135deg, #ff7e5f, #feb47b); /* Gradient Background */
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-direction: row;
            border: 1px solid #fff;
            border-radius: 10px;
            text-align: center;
            transition: all 0.3s ease;
            cursor: pointer;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.3);
        }

        .tile:hover {
            transform: scale(1.05);
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.5);
        }

        .tile h2 {
            font-size: 1.5em;
            margin: 0;
            color: #fff;
        }

        .tile p {
            font-size: 1.2em;
            margin: 0;
            color: #fff;
        }

        /* Button styling */
        .tile button {
            background: #fff;
            border: none;
            color: #333;
            padding: 10px 15px;
            font-size: 1em;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .tile button:hover {
            background: #ff7e5f;
            color: #fff;
            border: 1px solid #fff;
        }

        footer {
            text-align: center;
            background: rgba(0, 0, 0, 0.7);
            padding: 10px;
            color: #ccc;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>WELCOME TO GENDER REPONSIVE MECHANISM</h1>
       
    </header>

    <section class="tile-container">
        <!-- Admin Tile -->
        <div class="tile" onclick="location.href='adminlogin'">
            <h2>Admin</h2>
            <p>Manage users, oversee content, and ensure system security</p>
            <button>Go to Admin</button>
        </div>

        <!-- Counselor Tile -->
        <div class="tile" onclick="location.href='counsellorlogin.jsp'">
            <h2>Counsellor</h2>
            <p>Provide guidance and monitor progress for users in need</p>
            <button>Go to Counsellor</button>
        </div>

        
    </section>

    
</body>
</html>
