<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #e8effc, #f7c3dc);
            color: #333;
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

        .sidebar a {
            display: block;
            padding: 10px 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            text-decoration: none;
            color: #333;
            background-color: #34495e;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #16a085;
            color: #fff;
        }

        .sidebar a.active {
            background-color: #6a0d83;
            color: #fff;
        }

        /* Main Content */
        .main-content {
            margin-left: 270px;
            padding: 20px;
        }

        .main-content h1 {
            font-size: 2.5rem;
            color: #6a0d83;
            margin-bottom: 20px;
        }

        .content-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .content-table th, .content-table td {
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .content-table th {
            background-color: #6a0d83;
            color: #fff;
        }

        .content-table td {
            background-color: #f8f9fa;
        }

        .btn {
            padding: 10px 15px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn-add {
            background-color: #16a085;
            color: #fff;
        }

        .btn-add:hover {
            background-color: #1abc9c;
        }

        .btn-edit {
            background-color: #f39c12;
            color: #fff;
        }

        .btn-edit:hover {
            background-color: #e67e22;
        }

        .btn-delete {
            background-color: #e74c3c;
            color: #fff;
        }

        .btn-delete:hover {
            background-color: #c0392b;
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
            background-color: #6a0d83;
            color: #fff;
        }

        /* Chart Container */
        .chart-container {
            width: 80%;
            margin: 0 auto;
            margin-top: 40px;
        }
    </style>
</head>
<body>
<!-- Navbar -->
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
   

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Admin Panel</h2>
        <a href="admindashboard.jsp">Dashboard Overview</a>
        <a href="adminmanagecontent.jsp" class="active">Manage Content</a>
        <a href="adminusermanagement.jsp">User Management</a>
        <a href="adminrolepermission.jsp">Role and Permission Settings</a>
        <a href="adminreportanalytics.jsp">Reports & Analytics</a>
        <a href="adminsecuritysettings.jsp">Security Settings</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Manage Content</h1>
        <p>As an admin, you can add, update, or delete resources to ensure accurate and relevant information is provided to users.</p>

       
        <!-- Add Content Button -->
        <button class="btn btn-add" onclick="location.href='add-content.jsp'">Add New Content</button>

        <!-- Charts Section -->
        <div class="chart-container">
            <h1>Reports & Analytics</h1>
            <canvas id="barChart"></canvas>
            <canvas id="pieChart" style="margin-top: 50px;"></canvas>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Domestic Violence Support App. All rights reserved.
    </div>

    <!-- Chart.js Script -->
    <script>
        // Bar Chart: Resource Distribution by Category
        const barChartCtx = document.getElementById('barChart').getContext('2d');
        new Chart(barChartCtx, {
            type: 'bar',
            data: {
                labels: ['Legal Rights', 'Support Services', 'Health Risks', 'Counseling', 'Emergency Services'],
                datasets: [{
                    label: 'Number of Resources',
                    data: [10, 15, 7, 12, 8], // Example data
                    backgroundColor: ['#f39c12', '#16a085', '#6a0d83', '#e74c3c', '#3498db'],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: { display: false }
                },
                scales: {
                    y: { beginAtZero: true }
                }
            }
        });

        // Pie Chart: User Roles Distribution
        const pieChartCtx = document.getElementById('pieChart').getContext('2d');
        new Chart(pieChartCtx, {
            type: 'pie',
            data: {
                labels: ['Admin', 'Victim/Survivor', 'Counselor', 'Legal Advisor'],
                datasets: [{
                    data: [5, 20, 8, 7], // Example data
                    backgroundColor: ['#16a085', '#3498db', '#f39c12', '#e74c3c']
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: { position: 'bottom' }
                }
            }
        });
    </script>

</body>
</html>
