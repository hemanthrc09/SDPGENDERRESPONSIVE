<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management - Admin Module</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #fff4e6, #fce3e3);
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

        /* Search and Filter */
        .search-filter {
            margin-bottom: 20px;
            display: flex;
            gap: 10px;
        }

        .search-filter input, .search-filter select {
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* User Table */
        .user-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .user-table th, .user-table td {
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .user-table th {
            background-color: #6a0d83;
            color: #fff;
        }

        .user-table td {
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

        .btn-activate {
            background-color: #16a085;
            color: #fff;
        }

        .btn-activate:hover {
            background-color: #1abc9c;
        }

        .btn-deactivate {
            background-color: #e74c3c;
            color: #fff;
        }

        .btn-deactivate:hover {
            background-color: #c0392b;
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
    <a href="admindashboard.jsp" class="menu-item">Dashboard Overview</a><br/>
    <a href="adminmanagecontent.jsp" class="menu-item">Manage Content</a><br/>
    <a href="adminusermanagement.jsp" class="menu-item">User Management</a><br/>
    <a href="adminrolepermission.jsp" class="menu-item">Role and Permission Settings</a><br/>
    <a href="adminreportanalytics.jsp" class="menu-item">Reports & Analytics</a><br/>
    <a href="adminsecuritysettings.jsp" class="menu-item">Security Settings</a><br/>
</div>
    

    <!-- Main Content -->
    <div class="main-content">
        <h1>User Management</h1>

        <!-- Search and Filter -->
        <div class="search-filter">
            <input type="text" placeholder="Search by name or email">
            <select>
                <option value="">Filter by Role</option>
                <option value="victim">Victim/Survivor</option>
                <option value="counselor">Counselor</option>
                <option value="legal">Legal Advisor</option>
                <option value="admin">Admin</option>
            </select>
            <button class="btn btn-activate">Search</button>
        </div>

        <!-- User Table -->
        <table class="user-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Jane Doe</td>
                    <td>jane.doe@example.com</td>
                    <td>Victim/Survivor</td>
                    <td>Active</td>
                    <td>
                        <button class="btn btn-edit">Edit Role</button>
                        <button class="btn btn-deactivate">Deactivate</button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>John Smith</td>
                    <td>john.smith@example.com</td>
                    <td>Counselor</td>
                    <td>Active</td>
                    <td>
                        <button class="btn btn-edit">Edit Role</button>
                        <button class="btn btn-deactivate">Deactivate</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Emily Davis</td>
                    <td>emily.davis@example.com</td>
                    <td>Legal Advisor</td>
                    <td>Inactive</td>
                    <td>
                        <button class="btn btn-edit">Edit Role</button>
                        <button class="btn btn-activate">Activate</button>
                        <button class="btn btn-delete">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Domestic Violence Support App. All rights reserved.
    </div>

</body>
</html>
