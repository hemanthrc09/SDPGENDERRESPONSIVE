<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Steps to Get Help</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 0;
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
            background-color: #0288D1;
            padding: 20px;
            color: white;
            text-align: center;
        }
        section {
            padding: 40px;
        }
        h2 {
            font-weight: 500;
        }
        .step {
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
        }
        .step h3 {
            color: #0288D1;
        }
        .step p {
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
            <a href ="VisitorHome.jsp"> HOME</a>
            <a href="admindashboard.jsp">ADMIN DASHBOARD</a>
            <a href="adminresources.jsp">Resources</a>
            <a href="adminquiz.jsp">Self-Assessment Quiz</a>
        </div>
    </div>
<header>
    <h1>Steps to Get Help</h1>
    <p>Follow these steps to connect with the right support services.</p>
</header>

<section>
    <h2>How to Take Action</h2>

    <div class="step">
        <h3>Step 1: Recognize the Signs</h3>
        <p>Identify signs of abuse, whether physical, emotional, or psychological, and understand how to take the first step toward help.</p>
    </div>

    <div class="step">
        <h3>Step 2: Reach Out</h3>
        <p>Connect with a support service, such as a counselor or a legal advisor, to receive the help and guidance you need.</p>
    </div>

    <div class="step">
        <h3>Step 3: Seek Legal Protection</h3>
        <p>If necessary, seek legal advice and protection. This could include filing a restraining order or understanding your legal rights.</p>
    </div>

    <div class="step">
        <h3>Step 4: Ongoing Support</h3>
        <p>Receive continuous support through counseling and resources designed to assist you in your journey of recovery.</p>
    </div>
</section>

</body>
</html>
