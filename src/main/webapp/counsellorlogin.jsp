<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Counsellor Login</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>

    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, #6a11cb, #2575fc);
            color: #fff;
        }

        /* Navbar Styling (if not already in style.css) */
        nav {
            position: sticky;
            top: 0;
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
        }
        nav .logo h1 {
            margin: 0;
            font-size: 20px;
        }
        nav .nav-links {
            display: flex;
            gap: 15px;
        }
        nav .nav-links button {
            background: none;
            border: 1px solid white;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        nav .nav-links button:hover {
            background-color: white;
            color: black;
        }

        /* Centered form container */
        .form-container {
            background: rgba(255, 255, 255, 0.95);
            color: #333;
            border-radius: 10px;
            padding: 30px 40px;
            max-width: 400px;
            margin: 100px auto 50px; /* Add margin for navbar space */
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }

        /* Header styling */
        h3 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Table styling */
        table {
            width: 100%;
        }
        td {
            padding: 10px;
            font-size: 14px;
        }
        label {
            color: #333;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        /* Button styling */
        input[type="submit"], input[type="reset"] {
            background-color: #6a11cb;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            width: 48%;
            margin-right: 4%;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #2575fc;
        }

        /* Link styling */
        a {
            color: #2575fc;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }

        /* Alert message */
        .alert {
            color: red;
            font-weight: bold;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %> <!-- Include the Navbar -->

    <h3>Counsellor Login</h3>

    <div class="form-container">
        <form method="post" action="counsellorhome.jsp">
            <table>
                <tr>
                    <td><label for="cemail">Enter Email</label></td>
                    <td><input type="email" id="cemail" name="cemail" required/></td>
                </tr>
                <tr>
                    <td><label for="cpwd">Enter Password</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container" align="center">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
        <p align="center">
            <a href="counsellorReg.jsp">New Counsellor? Register Here</a>
        </p>
    </div>

    <c:if test="${not empty message}">
        <div class="alert">
            ${message}
        </div>
    </c:if>
</body>
</html>
