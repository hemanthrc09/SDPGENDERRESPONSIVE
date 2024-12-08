<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resources - Domestic Violence Support</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        } /* Navbar */
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
            background-color: #FF5722;
            color: white;
            padding: 20px;
            text-align: center;
        }
        section {
            padding: 40px;
        }
        h2 {
            text-align: center;
            color: #FF5722;
        }
        .resource-list {
            list-style-type: none;
            padding: 0;
        }
        .resource-list li {
            background-color: #fff;
            margin: 10px 0;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .resource-list li h3 {
            color: #FF5722;
        }
        .resource-list li p {
            color: #555;
        }
        @media (max-width: 768px) {
            section {
                padding: 20px;
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
            <a href="admindashboard.jsp">ADMIN DASHBOARD</a>
            <a href ="VisitorHome.jsp">HOME</a>
            <a href="adminresources.jsp">Resources</a>
            <a href="adminquiz.jsp">Self-Assessment Quiz</a>
        </div>
    </div>
<header>
    <h1>Resources for Domestic Violence Victims</h1>
</header>

<section>
    <h2>Available Support Services</h2>

    <ul class="resource-list">
        <li>
            <h3>National Domestic Violence Hotline</h3>
            <p>Call 1-800-799-7233 or text "START" to 88788 for confidential support 24/7.</p>
        </li>
        <li>
            <h3>Legal Aid Resources</h3>
            <p>Free legal assistance for victims of domestic violence seeking protective orders, custody arrangements, and other legal actions.</p>
        </li>
        <li>
            <h3>Emergency Shelter Services</h3>
            <p>Immediate safe housing for individuals escaping abusive situations.</p>
        </li>
    </ul>
</section>

</body>
</html>
