<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Counselor Dashboard - Domestic Violence Support</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f9f9f9;
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

    nav {
      display: flex;
      justify-content: space-around;
      background-color: #003366;
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

    .hero-section {
      text-align: center;
      padding: 30px 20px;
      background-color: #e8f1fc;
    }

    .hero-section h2 {
      color: #003366;
      font-size: 28px;
    }

    .container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 20px;
      padding: 20px;
      background-color: #e8daef
    }

    .card {
      background: white;
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 20px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .card img {
      width: 100%;
      max-width: 120px;
      margin-bottom: 15px;
    }

    .card h3 {
      color: #003366;
      font-size: 20px;
      margin-bottom: 10px;
    }

    .card p {
      font-size: 14px;
      color: #555;
    }
    .card img {
    width: 100px; /* Adjust as needed */
    height: auto; /* Maintain aspect ratio */
    display: block;
    margin: 0 auto 15px; /* Center image and add space below */
}
    

    .card a {
      display: inline-block;
      margin-top: 10px;
      padding: 10px 15px;
      background-color: #4a90e2;
      color: white;
      border-radius: 5px;
      text-decoration: none;
      font-size: 14px;
    }

    .card a:hover {
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
    <h1>Counsellor Dashboard</h1>
  </header>

  <nav>
    <a href="counsellormanagecases.jsp">Manage Cases</a>
    <a href="counsellorsessions.jsp">Provide Support</a>
    <a href="counsellorresources.jsp">Resources</a>
     <a href="counsellorprogresstracking.jsp">Track Progress</a>
    <a href="counsellorlogout.jsp">Logout</a>
  </nav>

  <div class="hero-section">
    <h2>Welcome, Counsellor</h2>
    <p>Your role is crucial in providing guidance, support, and monitoring the progress of survivors of domestic violence.</p>
  </div>

  <div class="container">
    <div class="card" id="manage-cases">
      
      <h3>Manage Cases</h3>
      <p>View and manage cases assigned to you. Keep track of survivor details and progress.</p>
      <a href="counsellormanagecases.jsp">Go to Cases</a>
    </div>

    <div class="card" id="provide-support">
     
      <h3>Provide Support</h3>
      <p>Schedule counseling sessions and provide immediate assistance to survivors.</p>
      <a href="counsellorsessions.jsp">Schedule a Session</a>
    </div>

    <div class="card" id="resources">
      
      <h3>Access Resources</h3>
      <p>Share resources, articles, and self-help guides with survivors to aid their recovery.</p>
      <a href="counsellorresources.jsp">View Resources</a>
    </div>

    <div class="card" id="progress-tracking">
      
      <h3>Track Progress</h3>
      <p>Review progress reports and monitor the impact of counseling sessions over time.</p>
      <a href="counsellorprogresstracking.jsp">Track Now</a>
    </div>
    
 
 <footer>
  <div>
    <p>&copy; 2024 Domestic Violence Support Web App | All Rights Reserved</p>
    <p>
      <a href="#privacy-policy" style="color: white; text-decoration: underline;">Privacy Policy</a> |
      <a href="#terms" style="color: white; text-decoration: underline;">Terms of Service</a>
    </p>
    <p>Contact Support: <a href="mailto:support@dvapp.com" style="color: white;">support@dvapp.com</a></p>
  </div>
</footer>
 
</body>
</html>
