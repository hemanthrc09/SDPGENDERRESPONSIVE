<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Provide Support - Domestic Violence Support</title>
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

    .form-section {
      max-width: 600px;
      margin: 0 auto;
      background: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .form-section h3 {
      margin-bottom: 20px;
      font-size: 20px;
      color: #003366;
      text-align: center;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-group label {
      display: block;
      font-size: 14px;
      color: #555;
      margin-bottom: 5px;
    }

    .form-group input,
    .form-group textarea,
    .form-group select {
      width: 100%;
      padding: 10px;
      font-size: 14px;
      border-radius: 5px;
      border: 1px solid #ddd;
      box-sizing: border-box;
    }

    .form-group textarea {: 14px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .form-group button:hover {
      background-color: #003366;
    }

    .message {
      margin-top: 20px;
      text-align: center;
      font-size: 14px;
      color: green;
    }
  </style>
</head>
<body>
  <header>
    <h1>Provide Support</h1>
  </header>

<nav>
    <a href="counsellormanagecases.jsp">Manage Cases</a>
    <a href="counsellorsessions.jsp">Provide Support</a>
    <a href="counsellorresources.jsp">Resources</a>
    <a href="counsellorprogresstracking.jsp">Track Progress</a>
    <a href="counsellorlogout.jsp">Logout</a>
  </nav>
  <div class="container">
    <h2>Schedule Counseling Sessions</h2>
    <div class="form-section">
      <h3>Support Form</h3>
      <form action="scheduleSupport.jsp" method="post">
        <!-- Survivor Name -->
        <div class="form-group">
          <label for="survivorName">Survivor Name:</label>
          <input type="text" id="survivorName" name="survivorName" placeholder="Enter survivor's name" required>
        </div>

        <!-- Session Date -->
        <div class="form-group">
          <label for="sessionDate">Session Date:</label>
          <input type="date" id="sessionDate" name="sessionDate" required>
        </div>

        <!-- Session Time -->
        <div class="form-group">
          <label for="sessionTime">Session Time:</label>
          <input type="time" id="sessionTime" name="sessionTime" required>
        </div>

        <!-- Mode of Support -->
        <div class="form-group">
          <label for="supportMode">Mode of Support:</label>
          <select id="supportMode" name="supportMode">
            <option value="In-Person">In-Person</option>
            <option value="Virtual">Virtual</option>
            <option value="Phone">Phone</option>
          </select>
        </div>

        <!-- Notes -->
        <div class="form-group">
          <label for="notes">Additional Notes (Optional):</label>
          <textarea id="notes" name="notes" placeholder="Enter any specific notes or requirements"></textarea>
        </div>

        <!-- Submit Button -->
        <div class="form-group">
          <button type="submit">Schedule Session</button>
        </div>
      </form>
      <div class="message" id="successMessage"></div>
    </div>
  </div>

  <script>
    // Simulate a success message for demonstration purposes
    const form = document.querySelector("form");
    const successMessage = document.getElementById("successMessage");

    form.addEventListener("submit", function(event) {
      event.preventDefault(); // Prevent actual form submission
      successMessage.textContent = "Session successfully scheduled!";
      form.reset(); // Clear the form fields
    });
  </script>
</body>
</html>
