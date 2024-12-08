<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GENDER RESPONSIVE MECHANISM</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
        body {
            background: url('image3.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Poppins', Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        h2 {
            text-align: center;
            font-size: 2.5rem;
            color: #FF6347; /* Tomato color for header */
            font-family: 'Courier New', Courier, monospace; /* Font change */
            margin-top: 50px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        .mainnavbar {
            display: flex;
            justify-content: flex-end;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.7);
        }

        .mainnavbar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            background-color: #007BFF;
            border-radius: 5px;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        .mainnavbar a:hover {
            background-color: #0056b3;
        }

        .mainnavbar a.active {
            background-color: #28a745;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="mainnavbar">
        <a href="VisitorHome.jsp" class="active">Home</a>
       
        <a href="counsellorlogin.jsp">Counsellor Login</a>
        <a href="adminLogin.jsp">Admin Login</a>
    </div>

   

</body>
</html>
