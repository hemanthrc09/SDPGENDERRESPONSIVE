<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            color: #fff;
        }
        h2 {
            text-align: center;
            font-size: 2.5rem;
            margin: 20px 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
        }
        .form-container {
            max-width: 600px;
            margin: 30px auto;
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        table {
            width: 100%;
            border-spacing: 10px;
        }
        td {
            padding: 10px;
        }
        label {
            font-weight: bold;
            color: #fcefe3;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #fff;
            border-radius: 8px;
            font-size: 1rem;
            color: #333;
        }
        input:focus, select:focus {
            outline: none;
            border-color: #feb47b;
            box-shadow: 0 0 5px #feb47b;
        }
        input[type="submit"], input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 1rem;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        input[type="reset"]:hover {
            background-color: #d9534f;
        }
        .button-container {
            text-align: center;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #feb47b;
            color: white;
        }
    </style>
</head>
<body>
    <div class="mainnavbar">
        <%@include file="mainnavbar.jsp" %>
    </div>
   
    <div class="form-container">
     <h1>User Registration </h1>
        <form method="post" action="insertuser">
            <table>
                <tr>
                    <td><label for="uname">Full Name</label></td>
                    <td><input type="text" id="cname" name="cname" placeholder="Enter your full name" required/></td>
                </tr>
                <tr>
                    <td><label for="ugender">Gender</label></td>
                    <td>
                        <select id="ugender" name="cgender" required>
                            <option value="">Select</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="udob">Date of Birth</label></td>
                    <td><input type="date" id="cdob" name="cdob" required/></td>
                </tr>
                <tr>
                    <td><label for="uemail">Email</label></td>
                    <td><input type="email" id="cemail" name="cemail" placeholder="example@domain.com" required/></td>
                </tr>
                <tr>
                    <td><label for="upwd">Password</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" placeholder="Enter your password" required/></td>
                </tr>
                <tr>
                    <td><label for="ucontact">Contact Number</label></td>
                    <td><input type="text" id="ccontact" name="ccontact" placeholder="Enter your phone number" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
