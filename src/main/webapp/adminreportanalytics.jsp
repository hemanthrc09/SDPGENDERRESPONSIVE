<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports & Analytics - Domestic Violence Support App</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh; /* Ensure the body takes full viewport height */
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #6a0d83;
            color: white;
            padding: 15px 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            position: sticky;
            top: 0;
            z-index: 10;
        }

        .navbar .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: #fff;
            text-decoration: none;
        }

        /* Sidebar */
        .sidebar {
            width: 250px;
            background-color: #f7dc6f;
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            padding: 20px;
            height: 100%;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar h2 {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 20px;
        }

        .sidebar a.menu-item {
            display: block;
            padding: 10px 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            text-decoration: none;
            color: #333;
            background-color: #34495e;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidebar a.menu-item:hover {
            background-color: #16a085;
            color: #fff;
        }

        /* Main Content */
        .main-content {
            margin-left: 250px; /* Adjusting to make space for sidebar */
            padding: 30px;
            width: calc(100% - 250px); /* Taking remaining space */
            background-color: #f4f4f9;
            overflow-y: auto;
            height: 100vh; /* Ensures content takes up full screen height */
        }

        h1 {
            color: #2980b9;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .stats-card {
            display: flex;
            justify-content: space-around;
            margin-bottom: 30px;
        }

        .card {
            background-color: #82e0aa;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            flex: 1;
            margin: 0 10px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card h3 {
            font-size: 1.5rem;
            color: #e74c3c;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 1.2rem;
            font-weight: bold;
            color: #27ae60;
        }

        .table-container {
            margin-top: 40px;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 1rem;
        }

        th {
            background-color: #6a0d83;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .footer {
            text-align: center;
            padding: 15px;
            background-color: #6a0d83;
            color: white;
            margin-top: 40px;
        }
    </style>
</head>
<body>

   

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Admin Panel</h2>
        <a href="admindashboard.jsp" class="menu-item">Dashboard Overview</a>
        <a href="adminmanagecontent.jsp" class="menu-item">Manage Content</a>
        <a href="adminusermanagement.jsp" class="menu-item">User Management</a>
        <a href="adminrolepermission.jsp" class="menu-item">Role and Permission Settings</a>
        <a href="adminreportanalytics.jsp" class="menu-item">Reports & Analytics</a>
        <a href="adminsecuritysettings.jsp" class="menu-item">Security Settings</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1 align = "center">Reports & Analytics</h1>

        <!-- Statistics Cards -->
        <div class="stats-card">
            <div class="card">
                <h3>Total Users</h3>
                <p>500</p>
            </div>
            <div class="card">
                <h3>Active Cases</h3>
                <p>120</p>
            </div>
            <div class="card">
                <h3>Completed Support Sessions</h3>
                <p>80</p>
            </div>
        </div>

        <!-- Detailed Reports Table -->
        <div class="table-container">
            <h2>Recent Activity Reports</h2>
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Role</th>
                        <th>Action Taken</th>
                        <th>Status</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>Victim</td>
                        <td>Accessed Legal Resources</td>
                        <td>Completed</td>
                        <td>12/12/2024</td>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>Counsellor</td>
                        <td>Provided Counseling</td>
                        <td>In Progress</td>
                        <td>12/12/2024</td>
                    </tr>
                    <tr>
                        <td>003</td>
                        <td>Legal Advisor</td>
                        <td>Updated Legal Resources</td>
                        <td>Completed</td>
                        <td>12/11/2024</td>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td>Admin</td>
                        <td>Updated Website Content</td>
                        <td>Completed</td>
                        <td>12/10/2024</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    

</body>
</html>
