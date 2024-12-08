<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Reports</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f7f9fc;
            padding: 20px;
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
            width: 90%;
            margin: auto;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #0078d7;
            color: #fff;
        }
        tr:hover {
            background-color: #f1f1f1;
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
        <h2>Payment Reports</h2>
        <table>
            <thead>
                <tr>
                    <th>Transaction ID</th>
                    <th>User</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>123456</td>
                    <td>John Doe</td>
                    <td>$50</td>
                    <td>2024-12-07</td>
                    <td>Completed</td>
                </tr>
                <tr>
                    <td>789012</td>
                    <td>Jane Smith</td>
                    <td>$75</td>
                    <td>2024-12-05</td>
                    <td>Pending</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
