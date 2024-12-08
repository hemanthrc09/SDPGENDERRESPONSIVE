<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Security Settings - Domestic Violence Support App</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
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
            background-color: #fff;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.1);
            flex-grow: 1;
        }

        h1 {
            color: #2980b9;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .settings-card {
            background-color: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .settings-card h2 {
            color: #8e44ad;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 15px;
        }

        .input-group label {
            font-size: 1.1rem;
            color: #555;
        }

        .input-group input,
        .input-group select {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1rem;
        }

        .btn {
            background-color: #27ae60;
            color: white;
            padding: 12px 30px;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #2ecc71;
        }

        .security-logs {
            background-color: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
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
            background-color: #8e44ad;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .footer {
            text-align: center;
            padding: 15px;
            background-color: #8e44ad;
            color: white;
            margin-top: 40px;
        }
    </style>
</head>
<body>

 

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Admin Panel</h2>
        <a href ="adminLogin.jsp" class="menu-item">ADMIN LOGIN PAGE</a>
        <a href = "counsellorlogin.jsp" class="menu-item">COUNSELLOR LOGIN PAGE</a>
        <a href="admindashboard.jsp" class="menu-item">Dashboard Overview</a>
        <a href="adminmanagecontent.jsp" class="menu-item">Manage Content</a>
        <a href="adminusermanagement.jsp" class="menu-item">User Management</a>
        <a href="adminrolepermission.jsp" class="menu-item">Role and Permission Settings</a>
        <a href="adminreportanalytics.jsp" class="menu-item">Reports & Analytics</a>
        <a href="adminsecuritysettings.jsp" class="menu-item">Security Settings</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1 align = "center">Security Settings</h1>

        <!-- Authentication Settings -->
        <div class="settings-card">
            <h2>User Authentication Settings</h2>
            <div class="input-group">
                <label for="password-policy">Password Policy</label>
                <select id="password-policy">
                    <option value="strong">Strong (8+ characters, mix of upper/lowercase, numbers, symbols)</option>
                    <option value="moderate">Moderate (6+ characters, mix of letters and numbers)</option>
                    <option value="weak">Weak (No restrictions)</option>
                </select>
            </div>

            <div class="input-group">
                <label for="two-factor">Enable Two-Factor Authentication</label>
                <select id="two-factor">
                    <option value="enabled">Enabled</option>
                    <option value="disabled">Disabled</option>
                </select>
            </div>

            <button class="btn">Save Changes</button>
        </div>

        <!-- Role-based Access Control -->
        <div class="settings-card">
            <h2>Role-based Access Control</h2>
            <div class="input-group">
                <label for="role-permissions">Select Role</label>
                <select id="role-permissions">
                    <option value="admin">Admin</option>
                    <option value="victim">Victim/Survivor</option>
                    <option value="counselor">Counselor</option>
                    <option value="legal-advisor">Legal Advisor</option>
                </select>
            </div>

            <div class="input-group">
                <label for="role-access">Permissions</label>
                <select id="role-access">
                    <option value="full">Full Access</option>
                    <option value="limited">Limited Access</option>
                    <option value="none">No Access</option>
                </select>
            </div>

            <button class="btn">Save Changes</button>
        </div>

        <!-- Security Logs -->
        <div class="security-logs">
            <h2>Security Event Logs</h2>
            <table>
                <thead>
                    <tr>
                        <th>Event ID</th>
                        <th>User ID</th>
                        <th>Action</th>
                        <th>Status</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>Admin001</td>
                        <td>Changed Password Policy</td>
                        <td>Success</td>
                        <td>12/12/2024</td>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>Legal001</td>
                        <td>Failed Login Attempt</td>
                        <td>Failed</td>
                        <td>12/12/2024</td>
                    </tr>
                    <tr>
                        <td>003</td>
                        <td>Counselor002</td>
                        <td>Changed Role Permissions</td>
                        <td>Success</td>
                        <td>12/11/2024</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    

</body>
</html>
