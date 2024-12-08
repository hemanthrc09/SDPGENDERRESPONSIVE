<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home - Domestic Violence Support App</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-image: url('background-image.jpg'); /* Replace with your background image */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-color:#ffcdd2;
            color: #fff;
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(106, 13, 131, 0.9); /* Semi-transparent purple */
            padding: 15px 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: sticky;
            top: 0;
         right: 0;  /* Position navbar on the right */
        z-index: 10;
        width: 100%;  /* Ensure the navbar spans the full width */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: white;
            text-decoration: none;
        }

        .navbar .nav-links {
            display: flex;
            gap: 20px;
        }

        .navbar .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1rem;
            padding: 8px 15px;
            background-color: #5fc8c2;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar .nav-links a:hover {
            background-color: #6a0d83;
        }

        /* Sidebar */
        .sidebar {
            width: 250px;
            background-color:#f7dc6f ;
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            height: 100%;
            margin-top: 60px;
        }

        .sidebar h2 {
            font-size: 1.5rem;
            color: #ecf0f1;
            margin-bottom: 20px;
        }

        .sidebar .menu-item {
            padding: 10px;
            background-color:  #34495e; 
            border-radius: 5px;
            margin-bottom: 10px;
            transition: background-color 0.3s ease;
        }

        .sidebar .menu-item:hover {
            background-color: #16a085;
        }
        .sidebar a.menu-item {
    display: block;
    padding: 10px;
    background-color: #34495e;
    border-radius: 5px;
    margin-bottom: 10px;
    text-decoration: none; /* Remove underline from links */
    color: #ecf0f1; /* Text color */
    transition: background-color 0.3s ease;
}

.sidebar a.menu-item:hover {
    background-color: #16a085;
}
        

        /* Main Content */
        .main-content {
        margin-left: 270px;
        padding: 20px;
        background-color: #f0f0f0; /* Light Grey Background */
    }

    .main-content h1 {
        font-size: 2.5rem;
        color:  #2980b9; /* Dark Blue */
    }

        .dashboard {
            display: flex;
            gap: 20px;
            margin-bottom: 40px;
        }

        .dashboard .card {
            background-color:#82e0aa;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            flex: 1;
                    transition: background-color 0.3s ease;
            
        }

        .dashboard .card h3 {
            margin-bottom: 15px;
            font-size: 1.2rem;
            color: #e74c3c;
        }

        .dashboard .card p {
            font-size: 1.5rem;
            font-weight: bold;
            color:#27ae60;
        }
 .dashboard .card:hover {
        background-color: #bdc3c7; /* Light Gray Hover */
    }
    /* Quick Actions */
    .main-content h2 {
        font-size: 1.8rem;
        color: #8e44ad; /* Changed to purple */
    }

    .main-content p {
        font-size: 1.2rem;
        color: #2c3e50; /* Changed to dark blue */
    }
        /* Footer */
        .footer {
            text-align: center;
            padding: 15px;
            background-color: #6a0d83;
            font-size: 1rem;
            color: #fff;
            margin-top: 40px;
        }

        /* Responsive adjustments */
        @media screen and (max-width: 768px) {
            .nav-links {
                display: none;
                flex-direction: column;
                background-color: rgba(106, 13, 131, 0.9);
                position: absolute;
                top: 60px;
                right: 20px;
                width: 200px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                z-index: 10;
            }

            .nav-links.show {
                display: flex;
            }

            .hamburger {
                display: flex;
            }
        }

        /* Hamburger menu */
        .hamburger {
            display: none;
            flex-direction: column;
            cursor: pointer;
        }

        .hamburger div {
            width: 25px;
            height: 3px;
            background-color: white;
            margin: 3px 0;
        }
    </style>
    <script>
        // Toggle navbar links on smaller screens
        function toggleMenu() {
            const navLinks = document.querySelector('.nav-links');
            navLinks.classList.toggle('show');
        }
    </script>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="#" class="logo">WELCOME  ADMIN HOME</a>
        <div class="nav-links">
            <a href="adminaboutus.jsp">About Us</a>
            <a href="adminunderstand.jsp">Understand</a>
            <a href="adminvisualization.jsp">Pie Chart</a>

           
            
        </div>
        <!-- Hamburger Menu for Mobile -->
        <div class="hamburger" onclick="toggleMenu()">
            <div></div>
            <div></div>
            <div></div>
        </div>
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
        <h1>Welcome, Admin!</h1>
        </div>
        <!-- Dashboard Overview -->
        <div class="dashboard">
            <div class="card">
                <h3>Total Users</h3>
                <p>120</p>
            </div>
            <div class="card">
                <h3>Active Cases</h3>
                <p>45</p>
            </div>
            <div class="card">
                <h3>New Messages</h3>
                <p>12</p>
            </div>
        </div>

        <h2>Quick Actions</h2>
        <p>Manage user roles, update legal content, monitor active cases, and more...</p>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 All rights reserved. Powered by Domestic Violence Support.
    </div>

</body>
</html>
