<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Role and Permission Settings</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #eaf2f8, #fbeee6);
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

        .permissions-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .permissions-table th, .permissions-table td {
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .permissions-table th {
            background-color: #6a0d83;
            color: #fff;
        }

        .permissions-table td {
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

        .btn-save {
            background-color: #16a085;
            color: #fff;
        }

        .btn-save:hover {
            background-color: #1abc9c;
        }

        .btn-reset {
            background-color: #e74c3c;
            color: #fff;
        }

        .btn-reset:hover {
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
        <a href="admindashboard.jsp" class="menu-item">Dashboard Overview</a>
        <a href="adminmanagecontent.jsp" class="menu-item">Manage Content</a>
        <a href="adminusermanagement.jsp" class="menu-item">User Management</a>
        <a href="adminrolepermission.jsp" class="menu-item">Role and Permission Settings</a>
        <a href="adminreportanalytics.jsp" class="menu-item">Reports & Analytics</a>
        <a href="adminsecuritysettings.jsp" class="menu-item">Security Settings</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Role and Permission Settings</h1>

        <p>Configure permissions for each role to ensure secure and efficient system operations.</p>

        <!-- Form to Edit Permissions -->
        <form action="savePermissions.jsp" method="post">
            <!-- Permissions Table -->
            <table class="permissions-table">
                <thead>
                    <tr>
                        <th>Feature</th>
                        <th>Victim/Survivor</th>
                        <th>Counselor</th>
                        <th>Legal Advisor</th>
                        <th>Admin</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Access Resources</td>
                        <td><input type="checkbox" name="victim_resources" checked></td>
                        <td><input type="checkbox" name="counselor_resources"></td>
                        <td><input type="checkbox" name="legal_advisor_resources"></td>
                        <td><input type="checkbox" name="admin_resources"></td>
                    </tr>
                    <tr>
                        <td>Manage Cases</td>
                        <td><input type="checkbox" name="victim_cases"></td>
                        <td><input type="checkbox" name="counselor_cases" checked></td>
                        <td><input type="checkbox" name="legal_advisor_cases"></td>
                        <td><input type="checkbox" name="admin_cases"></td>
                    </tr>
                    <tr>
                        <td>Update Legal Resources</td>
                        <td><input type="checkbox" name="victim_legal" disabled></td>
                        <td><input type="checkbox" name="counselor_legal" disabled></td>
                        <td><input type="checkbox" name="legal_advisor_legal" checked></td>
                        <td><input type="checkbox" name="admin_legal"></td>
                    </tr>
                    <tr>
                        <td>System Administration</td>
                        <td><input type="checkbox" name="victim_admin" disabled></td>
                        <td><input type="checkbox" name="counselor_admin" disabled></td>
                        <td><input type="checkbox" name="legal_advisor_admin" disabled></td>
                        <td><input type="checkbox" name="admin_admin" checked disabled></td>
                    </tr>
                </tbody>
            </table>

            <!-- Buttons -->
            <button class="btn btn-save" type="submit">Save Changes</button>
            <button class="btn btn-reset" type="reset">Reset to Default</button>
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Domestic Violence Support App. All rights reserved.
    </div>

</body>
</html>
