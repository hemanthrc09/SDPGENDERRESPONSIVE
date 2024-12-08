<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Track Progress - Domestic Violence Support</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f9f9f9;
    }
    nav{
        display: flex;
      justify-content: space-around;
      background-color: #eb984e ;
      padding: 10px 0;
    }

    nav a {
      color: white;
      text-decoration: none;
      font-size: 16px;
    }

    nav a:hover {
      text-decoration: underline;
    }

    header {
      background-color: #4a90e2;
      padding: 20px;
      color: white;
      text-align: center;
    }

    header h1 {
      margin: 0;
      font-size: 24px;
    }

    .container {
      padding: 20px;
      background-color: #e8f1fc;
    }

    .container h2 {
      text-align: center;
      color: #003366;
    }

    .progress-card {
      background: white;
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 20px;
      margin-bottom: 20px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .progress-card h3 {
      color: #003366;
      font-size: 20px;
      margin-bottom: 10px;
    }

    .progress-card p {
      font-size: 14px;
      color: #555;
    }

    .progress-card a {
      display: inline-block;
      margin-top: 10px;
      padding: 10px 15px;
      background-color: #4a90e2;
      color: white;
      border-radius: 5px;
      text-decoration: none;
      font-size: 14px;
    }

    .progress-card a:hover {
      background-color: #003366;
    }

    footer {
      text-align: center;
      background-color: #4a90e2;
      color: white;
      padding: 10px;
      position: relative;
      bottom: 0;
      width: 100%;
    }

    footer p {
      margin: 0;
      font-size: 14px;
    }
  </style>
</head>
<body>
  <header>
    <h1>Track Survivor Progress</h1>
  </header>
<nav>
    <a href="counsellormanagecases.jsp">Manage Cases</a>
    <a href="counsellorsessions.jsp">Provide Support</a>
    <a href="counsellorresources.jsp">Resources</a>
    <a href="counsellorprogresstracking.jsp">Track Progress</a>
    <a href="counsellorlogout.jsp">Logout</a>
  </nav>
  <div class="container">
    <h2>Survivor Progress Tracking</h2>

    <!-- Progress Card 1 -->
    <div class="progress-card">
      <h3>Survivor: Jane Doe</h3>
      <p>Status: Actively Engaged</p>
      <p>Last Session Date: 2024-12-01</p>
      <p>Next Steps: Follow-up on emotional recovery and offer legal guidance.</p>
      <a href="#">View Detailed Progress</a>
    </div>

    <!-- Progress Card 2 -->
    <div class="progress-card">
      <h3>Survivor: John Smith</h3>
      <p>Status: Inactive - Needs Urgent Attention</p>
      <p>Last Session Date: 2024-11-15</p>
      <p>Next Steps: Schedule urgent session and discuss safety planning.</p>
      <a href="#">View Detailed Progress</a>
    </div>

    <!-- Progress Card 3 -->
    <div class="progress-card">
      <h3>Survivor: Mary Johnson</h3>
      <p>Status: In Progress</p>
      <p>Last Session Date: 2024-11-28</p>
      <p>Next Steps: Continue emotional support and introduce self-help guides.</p>
      <a href="#">View Detailed Progress</a>
    </div>

    <!-- Progress Card 4 -->
    <div class="progress-card">
      <h3>Survivor: Sara Lee</h3>
      <p>Status: Successfully Completed Sessions</p>
      <p>Last Session Date: 2024-10-20</p>
      <p>Outcome: Survivor has regained control over life, currently transitioning to follow-up care.</p>
      <a href="#">View Detailed Progress</a>
    </div>

  </div>

  <footer>
    <p>&copy; 2024 Domestic Violence Support Web App | All Rights Reserved</p>
    <p>
      <a href="#privacy-policy" style="color: white; text-decoration: underline;">Privacy Policy</a> |
      <a href="#terms" style="color: white; text-decoration: underline;">Terms of Service</a>
    </p>
    <p>Contact Support: <a href="mailto:support@dvapp.com" style="color: white;">support@dvapp.com</a></p>
  </footer>
</body>
</html>
