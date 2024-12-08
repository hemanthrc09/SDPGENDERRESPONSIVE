<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Logout - Domestic Violence Support</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #eb984e;
    }

    header {
      background-color: #d98880;
      padding: 20px;
      color: violet;
      text-align: center;
    }

    header h1 {
      margin: 0;
      font-size: 24px;
    }

    .container {
      padding: 40px;
      text-align: center;
      background-color: #e8daef;
    }

    .container h2 {
      color: #a3e4d7 ;
    }

    .message {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
      font-size: 18px;
      color: #555;
    }

    .action-buttons a {
      padding: 10px 20px;
      margin: 10px;
      background-color: #4a90e2;
      color: blue;
      text-decoration: none;
      border-radius: 5px;
      font-size: 16px;
    }

    .action-buttons a:hover {
      background-color: #dc7633 ;
    }

    footer {
      text-align: center;
      background-color: #dc7633 ;
      color: white;
      padding: 10px;
      position: relative;
      bottom: 0;
      width: 100%;
    }

    footer p {
      margin: 0;
      font-size: 14px;
    }
  </style>
</head>
<body>
<%@ include file = "mainnavbar.jsp" %>
  <header>
    <h1>Logout - Domestic Violence Support</h1>
  </header>

  <div class="container">
    <h2>Are you sure you want to log out?</h2>

    <div class="message">
      <p>You are about to log out of your counselor account. Please confirm your action below.</p>
    </div>

    <div class="action-buttons">
      <a href="counsellorlogin.jsp">Yes, Log Out</a>
      <a href="counsellorhome.jsp">No, Stay Logged In</a>
    </div>
  </div>

  <footer>
    <p>&copy; 2024 Domestic Violence Support Web App | All Rights Reserved</p>
    <p>
      <a href="#privacy-policy" style="color: white; text-decoration: underline;">Privacy Policy</a> |
      <a href="#terms" style="color: white; text-decoration: underline;">Terms of Service</a>
    </p>
    <p>Contact Support: <a href="mailto:support@dvapp.com" style="color: white;">support@dvapp.com</a></p>
  </footer>
</body>
</html>
