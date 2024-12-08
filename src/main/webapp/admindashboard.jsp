<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Domestic Violence Support App</title>
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
        /* General Container */
.container {
    display: flex;
    max-width: 1200px; /* Set a max width for the layout */
    margin: 0 auto; /* Center the layout */
    padding: 20px; /* Add padding for spacing */
    gap: 20px; /* Space between sidebar and main content */
}

/* Sidebar */
.sidebar {
    width: 250px; /* Fixed width for the sidebar */
    background-color: #f7dc6f;
    padding: 20px;
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    height: fit-content; /* Adjust height dynamically */
}

/* Main Content */
.main-content {
    flex: 1; /* Allow main content to take up remaining space */
    background: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
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
/* Active button highlight */
.navbar .btn.active {
    background-color: #e74c3c; /* Change the background color */
    color: #fff; /* Ensure the text remains white */
    font-weight: bold; /* Make text bold for emphasis */
}

.navbar .btn.active:hover {
    background-color: #c0392b; /* Darker shade on hover */
}


.sidebar a.menu-item:hover {
    background-color: #16a085;
}
        
        /* Main Content */
        .main-content {
            margin-left: 270px;
            padding: 20px;
        }

        .main-content h1 {
            font-size: 2.5rem;
            color: #6a0d83;
        }

        .dashboard {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .card {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .card h3 {
            font-size: 1.5rem;
            color: #e74c3c;
        }

        .card p {
            font-size: 1.2rem;
            margin: 10px 0;
            color: #34495e;
        }

        .card a {
            text-decoration: none;
            padding: 10px 15px;
            background-color: #16a085;
            color: #fff;
            border-radius: 5px;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        .card a:hover {
            background-color: #1abc9c;
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
     <a href="adminHome.jsp" class="btn btn-primary">Admin Home</a>
     
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
        <p>Use the dashboard to manage resources, users, and monitor the app's performance effectively.</p>
        <div class="dashboard">
            <div class="card">
                <h3>Total Users</h3>
                <p>120</p>
                <a href="adminusermanagement.jsp">View Users</a>
            </div>
            <div class="card">
                <h3>Active Cases</h3>
                <p>45</p>
                <a href="adminusermanagement.jsp">Manage Cases</a>
            </div>
          
            <div class="card">
                <h3>Reports</h3>
                <p>5 Pending</p>
                <a href="adminreportanalytics.jsp">View Reports</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Domestic Violence Support App. All rights reserved.
    </div>

</body>
</html>
