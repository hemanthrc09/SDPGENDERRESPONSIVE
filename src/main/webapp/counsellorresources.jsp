<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Resources - Domestic Violence Support</title>
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
      background-color: #f7dc6f ;
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

    .resource-card {
      background: white;
      border: 1px solid #ddd;
      border-radius: 8px;
      padding: 20px;
      margin-bottom: 20px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .resource-card h3 {
      color: #003366;
      font-size: 20px;
      margin-bottom: 10px;
    }

    .resource-card p {
      font-size: 14px;
      color: #555;
    }

    .resource-card a {
      display: inline-block;
      margin-top: 10px;
      padding: 10px 15px;
      background-color: #4a90e2;
      color: white;
      border-radius: 5px;
      text-decoration: none;
      font-size: 14px;
    }

    .resource-card a:hover {
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
    <h1>Resources for Survivors</h1>
  </header>
<nav>
    <a href="counsellormanagecases.jsp">Manage Cases</a>
    <a href="counsellorsessions.jsp">Provide Support</a>
    <a href="counsellorresources.jsp">Resources</a>
    <a href="counsellorprogresstracking.jsp">Track Progress</a>
    <a href="counsellorlogout.jsp">Logout</a>
  </nav>
  <div class="container">
    <h2>Helpful Resources</h2>

    <!-- Resource 1 -->
    <div class="resource-card">
      <h3>Survivor Self-Help Guide</h3>
      <p>This guide provides practical steps to help survivors of domestic violence find support, safety, and resources in their recovery journey.</p>
      <a href="#">View Guide</a>
    </div>

    <!-- Resource 2 -->
    <div class="resource-card">
      <h3>Emergency Support Numbers</h3>
      <p>A comprehensive list of emergency hotlines and crisis support services for survivors of domestic violence.</p>
      <a href="#">View Numbers</a>
    </div>

    <!-- Resource 3 -->
    <div class="resource-card">
      <h3>Legal Aid and Advocacy</h3>
      <p>Access legal assistance, advocacy services, and information about survivors' rights and legal protection.</p>
      <a href="#">Learn More</a>
    </div>

    <!-- Resource 4 -->
    <div class="resource-card">
      <h3>Support Groups</h3>
      <p>Information about support groups and counseling services where survivors can connect with others facing similar challenges.</p>
      <a href="#">Find a Group</a>
    </div>

    <!-- Resource 5 -->
    <div class="resource-card">
      <h3>Safety Planning</h3>
      <p>Step-by-step safety planning to help survivors create an effective plan for escaping unsafe situations.</p>
      <a href="#">View Safety Plan</a>
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
