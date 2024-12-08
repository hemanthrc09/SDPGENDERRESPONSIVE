<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Email</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
         /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #6a0d83;
            color: #fff;
            padding: 15px 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: #fff;
            text-decoration: none;
        }
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
        
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }
        input, textarea, button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        button {
            background-color: #4caf50;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 15px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
   <div class="navbar">
        
        <div class="nav-links">
        <a href="adminsendemail.jsp">Email</a>
        <a href="adminpaymentreports.jsp">Payments</a>
            <a href="adminoverview.jsp">Overview</a>
            <a href="adminsteps.jsp">Steps</a>
            <a href="admindashboard.jsp">ADMIN DASHBOARD</a>
            <a href ="VisitorHome.jsp">HOME</a>
            <a href="adminvisualization.jsp">Pie Chart</a>
            <a href="adminresources.jsp">Resources</a>
            <a href="adminquiz.jsp">Self-Assessment Quiz</a>
        </div>
    </div>
    <div class="container">
        <h2>Send Email</h2>
        <form action="SendEmailServlet" method="post">
        
        
            <label for="to">From :</label>
            <input type="email" id="to" name="to" placeholder="Enter your's email" required>
            <label for="to">To :</label>
            <input type="email" id="to" name="to" placeholder="Enter recipient's email" required>

            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" placeholder="Enter subject" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" placeholder="Enter your message" required></textarea>

            <button type="submit">Send Email</button>
        </form>
    </div>
</body>
</html>
