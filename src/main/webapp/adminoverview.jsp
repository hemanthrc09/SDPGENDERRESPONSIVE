<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Overview - Domestic Violence Support</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            color: #333;
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
        
        header {
            background-color: #1E88E5;
            padding: 20px;
            color: white;
            text-align: center;
        }
        section {
            padding: 40px;
        }
        h1, h2 {
            font-weight: 500;
        }
        .container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .role-card {
            background: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 25%;
            padding: 20px;
            margin: 10px;
            border-radius: 8px;
            text-align: center;
        }
        .role-card h3 {
            color: #1E88E5;
        }
        .role-card p {
            color: #555;
        }
        @media (max-width: 768px) {
            .role-card {
                width: 45%;
            }
        }
        @media (max-width: 480px) {
            .role-card {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<!-- Navbar -->
    <div class="navbar">
        
        <div class="nav-links">
            <a href="adminoverview.jsp">Overview</a>
            <a href="adminsteps.jsp">Steps</a>
            <a href ="VisitorHome.jsp">HOME</a>
            <a href="admindashboard.jsp">ADMIN DASHBOARD</a>
            <a href="adminresources.jsp">Resources</a>
            <a href="adminquiz.jsp">Self-Assessment Quiz</a>
        </div>
    </div>
<header>
    <h1>Domestic Violence Support Platform</h1>
    <p>Your Safe Place for Information and Help</p>
</header>

<section>
    <h2>Overview</h2>
    <p>This platform offers resources and support for individuals affected by domestic violence, ensuring that everyone—victims, survivors, counselors, and legal advisors has the necessary tools and information to seek help and make informed decisions.</p>
    
    <div class="container">
        <div class="role-card">
            <h3>Admin</h3>
            <p>Manage content, user roles, and ensure data security to maintain a safe environment.</p>
        </div>
        <div class="role-card">
            <h3>Victim/Survivor</h3>
            <p>Access resources, seek help, and connect with the support services tailored to your needs.</p>
        </div>
        <div class="role-card">
            <h3>Counsellor</h3>
            <p>Provide support, guidance, and monitor the progress of survivors on their healing journey.</p>
        </div>
        <div class="role-card">
            <h3>Legal Advisor</h3>
            <p>Offer legal advice, update legal resources, and assist with legal actions related to domestic violence.</p>
        </div>
    </div>
</section>

</body>
</html>
