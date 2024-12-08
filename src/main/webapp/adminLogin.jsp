<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Login</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
        /* General Body Styling */
        body {
            background: url('background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Poppins', Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        h3 {
            text-align: center;
            font-size: 2rem;
            color: #f4f4f9;
            margin-top: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        .form-container {
            width: 100%;
            max-width: 400px;
            margin: 50px auto;
            background: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
            padding: 20px;
        }

        form table {
            width: 100%;
            color: #fff;
        }

        form table tr td {
            padding: 10px;
            font-size: 1rem;
        }

        form table tr td label {
            font-weight: bold;
            color: #f0f0f0;
        }

        form table tr td input[type="text"], 
        form table tr td input[type="password"] {
            width: 90%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            background: rgba(255, 255, 255, 0.8);
            color: #333;
        }

        form table tr td input[type="text"]:focus, 
        form table tr td input[type="password"]:focus {
            outline: none;
            background: rgba(255, 255, 255, 1);
            box-shadow: 0 0 5px #009688;
        }

        .button-container {
            text-align: center;
        }

        form table tr td input[type="submit"], 
        form table tr td input[type="reset"] {
            padding: 10px 20px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
            color: #fff;
        }

        form table tr td input[type="submit"] {
            background-color: #28a745;
        }

        form table tr td input[type="reset"] {
            background-color: #dc3545;
        }

        form table tr td input[type="submit"]:hover {
            background-color: #218838;
        }

        form table tr td input[type="reset"]:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3>Admin Login</h3>
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" placeholder="Username" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" placeholder="Password" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
