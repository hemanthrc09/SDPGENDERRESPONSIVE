<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Content - Admin Module</title>
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
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="#" class="logo">Admin Dashboard</a>
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

        <!-- Content Table -->
        <table class="content-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Category</th>
                    <th>Title</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Legal Rights</td>
                    <td>Understanding Restraining Orders</td>
                    <td>
                        <button class="btn btn-edit">Edit</button>
                        <button class="btn btn-delete">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Support Services</td>
                    <td>Helpline Directory</td>
                    <td>
                        <button class="btn btn-edit">Edit</button>
                        <button class="btn btn-delete">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Health Risks</td>
                    <td>Recognizing Signs of Abuse</td>
                    <td>
                        <button class="btn btn-edit">Edit</button>
                        <button class="btn btn-delete">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Add Content Button -->
        <button class="btn btn-add" onclick="location.href='add-content.jsp'">Add New Content</button>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Domestic Violence Support App. All rights reserved.
    </div>

</body>
</html>
